public protocol ImmutableBitboard: Equatable, Hashable, CustomStringConvertible {
    // e.g. UInt8, UInt16, UInt32, UInt64 etc
    associatedtype RawValue: FixedWidthInteger & UnsignedInteger
    typealias Size = BitboardSize
    typealias Line = BitBoardLine<Self>
    typealias Point = BitBoardPoint<Self>
    
    var fileWidth: Int { get }
    var rankWidth: Int { get }
    var rawValue: RawValue { get }
    
    func clone() -> Self
}

// MARK: CustomStringConvertible
extension ImmutableBitboard {
    
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
