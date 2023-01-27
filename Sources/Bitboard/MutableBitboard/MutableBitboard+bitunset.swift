
public extension MutableBitboard {

    ///
    /// - Parameter file: <#file description#>
    mutating func bitunset(file: Int) {
        do {
            var mask: RawValue = 0
            let _mask_: RawValue = 1 << (file - 1)
            for i in 0..<self.rankWidth {
                mask |= (_mask_ << (self.rankWidth * i))
            }
            self.rawValue &= ~mask
        }
    }

    ///
    /// - Parameter rank: <#rank description#>
    mutating func bitunset(rank: Int) {
        do {
            let line: RawValue = ~(RawValue.max << self.fileWidth)
            let mask = line << ((rank - 1) * (self.fileWidth))
            self.rawValue &= ~mask
        }
    }

    ///
    /// - Parameters:
    ///   - file: <#file description#>
    ///   - rank: <#rank description#>
    mutating func bitunset(file: Int, rank: Int) {
        do {
            let bit: RawValue = 1
            let mask = bit << ((file - 1) + ((rank - 1) * (self.fileWidth)))
            self.rawValue &= ~mask
        }
    }
}
