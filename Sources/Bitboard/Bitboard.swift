import Foundation

public protocol Bitboard: Equatable, Hashable, CustomStringConvertible {
    
    // e.g. UInt8, UInt16, UInt32, UInt64 etc
    associatedtype RawValue: FixedWidthInteger & UnsignedInteger
    typealias Line = BitBoardLine
    typealias Point = BitBoardPoint
    
    var fileWidth: Int { get set }
    var rankWidth: Int { get set }
    var rawValue: RawValue { get set }
    
    func Clone() -> Self
    func Valid() -> Bool
}

extension Bitboard {
    
    /// <#Description#>
    /// - Returns: <#description#>
    public func Valid() -> Bool {
        let need_bit_width: Int = (fileWidth * rankWidth)
        return self.rawValue.bitWidth >= need_bit_width
    }
}

// MARK: CustomStringConvertible
extension Bitboard {
    
    /// <#Description#>
    private var space_padding: String {
        if self.rankWidth >= 10 {
            return "  "
        }
        return " "
    }
    
    /// 桁数を合わせて０埋めで出力する
    /// - Parameter rank: <#rank description#>
    /// - Returns: <#description#>
    @inline(__always)
    private func zeroPadding_fileWidthformat (rank: Int) -> String {
        if self.rankWidth >= 10 {
            return String(format: "%02d", rank)
        }
        return String(format: "%01d", rank)
    }
    
    /// <#Description#>
    /// example:
    ///  ABCDE       ABCDE
    ///01*----      1*----
    ///02-*---  or  2-*---
    ///03--*--      3--*--
    ///04---*-      4---*-
    public var description: String {
        var retval: String = ""
        var index: RawValue = 1
        let current: RawValue = self.rawValue
        let fileRange = (1..<(self.fileWidth + 1))
        let rankRange = (1..<(self.rankWidth + 1))
        
        // " ABCDE..."
        retval += space_padding;
        fileRange.forEach { retval += String(UnicodeScalar(64 + $0)!) };  retval += "\n";
        rankRange.forEach { (r) in
            retval += zeroPadding_fileWidthformat(rank: r)
            fileRange.forEach { (f) in
                retval += (current & index) > 0 ? "*" : "-"
                index <<= 1
            }
            if r != self.rankWidth { retval += "\n"; }
        }
        
        return retval
    }
    
    public var debugDescription: String { return self.description }
}
