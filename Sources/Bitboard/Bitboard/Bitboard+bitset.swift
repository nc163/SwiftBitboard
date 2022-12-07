
public extension Bitboard {
    
    /// 
    /// - Parameter file: <#file description#>
    mutating func bitset(file: Int) {
        do {
            var mask: RawValue = 0
            let _mask_: RawValue = 1 << (file - 1)
            for i in 0..<self.rankWidth {
                mask |= (_mask_ << (self.rankWidth * i))
            }
            self.rawValue |= mask
        }
    }
    
    /// 
    /// - Parameter rank: <#rank description#>
    mutating func bitset(rank: Int) {
        do {
            let line: RawValue = ~(RawValue.max << self.fileWidth)
            let mask = line << ((rank - 1) * (self.fileWidth))
            self.rawValue &= mask
        }
    }
    
    /// 
    /// - Parameters:
    ///   - file: <#file description#>
    ///   - rank: <#rank description#>
    mutating func bitset(file: Int, rank: Int) {
        do {
            let bit: RawValue = 1
            let mask = bit << ((file - 1) + ((rank - 1) * (self.fileWidth)))
            self.rawValue |= mask
        }
    }
    
    
    /// 指定した(file, rank)のbitを立ち上げる
    /// - Parameters:
    ///   - file: <#file description#>
    ///   - rank: <#rank description#>
//    mutating func bitset(between: BitboardPoint, at: BitboardPoint) {
//        guard between.straight(to: at) else { return }
//        
//        let A = between < at ? between : at
//        let B = between < at ? at : between
//        
//        var file = (between < at ? between : at).file
//        var rank = (between < at ? at : between).rank
//
//        self.mask(point: A, to: to)
//        while(A != B) {
//            file = File(rawValue: file.rawValue + A.file.rawValue == B.file.rawValue ? 0 : A.file.rawValue < B.file.rawValue ? 1 : -1)!
//            rank += A.rank == B.rank ? 0 : A.rank < B.rank ? 1 : -1;
//            self.mask(file: file, rank: rank, to: to)
//        }
//    }
}
