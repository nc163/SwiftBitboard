
public protocol Bitboard: MutableBitboard {
    
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
