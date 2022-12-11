import Foundation


public protocol Bitboard: MutableBitboard {
    
    // e.g. UInt8, UInt16, UInt32, UInt64 etc
//    typealias Size = BitboardSize
//    typealias Line = BitBoardLine<Self>
//    typealias Point = BitBoardPoint<Self>
    
    var fileWidth: Int { get set }
    var rankWidth: Int { get set }
    var rawValue: RawValue { get set }
    
    func clone() -> Self
}

public extension Bitboard {
    
    var square: Bool {
        return self.fileWidth == self.rankWidth
    }
    
    /// <#Description#>
    /// - Returns: <#description#>
    func valid() -> Bool {
        let need_bit_width: Int = (fileWidth * rankWidth)
        return self.rawValue.bitWidth >= need_bit_width
    }
}
