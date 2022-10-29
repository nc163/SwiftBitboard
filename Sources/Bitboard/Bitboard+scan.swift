
public extension Bitboard {
    
    /// Bitboardの範囲内の立ち上がりビットがあるかどうか
    func bitscan() -> Bool {
        return self.rawValue > 0
    }
    
    /// Bitboardの範囲内の、指定したfile列の立ち上がりビットがあるかどうか
    /// - Parameter file: <#file description#>
    func bitscan(file: Int) -> Bool {
        var any = self.rawValue
        do {
            var mask: RawValue = 0
            let f: RawValue = 1 << (file - 1)
            for i in 0..<self.rankWidth {
                mask |= (f << (self.rankWidth * i))
            }
            any = any & mask
        }
        return any > 0
    }
    
    /// Bitboardの範囲内の、指定したrank行の立ち上がりビットがあるかどうか
    /// - Parameter rank: <#rank description#>
    func bitscan(rank: Int) -> Bool {
        var any = self.rawValue
        do {
            let line: RawValue = ~(RawValue.max << self.fileWidth)
            let mask = line << ((rank - 1) * (self.fileWidth))
            any = any & mask
        }
        return any > 0
    }
    
    /// Bitboardの範囲内の、指定したrank行の立ち上がりビットがあるかどうか
    /// - Parameter rank: <#rank description#>
    func bitscan(file: Int, rank: Int) -> Bool {
        var any = self.rawValue
        do {
            let p: RawValue = ~(1 << (file - 1))
            let mask = p << ((rank - 1) * (self.fileWidth))
            any = any & ~mask
        }
        return any > 0
    }
}
