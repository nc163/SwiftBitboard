public extension Bitboardable {
    
    //
    // MARK: bitset
    //
    
    /// 指定したfile列のbitを立ち上げる
    /// - Parameter file: <#file description#>
    func bitset(file: Int) -> Self {
        
        // 範囲外を指していたら 何もしない
        guard self.within(files: file) else { return self }
        
        var raw: BigUInt = self.rawValue
        do {
            var mask: BigUInt = 0
            let _mask_: BigUInt = 1 << (file - 1)
            for i in rankRange {
                mask |= (_mask_ << (self.rankWidth * i))
            }
            raw |= mask
        }
        
        return Bitboard(rawValue: raw)
    }
    
    /// 指定したrank行のbitを立ち上げる
    /// - Parameter rank: <#rank description#>
    func bitset(rank: Int) -> Self {
        
        // 範囲外を指していたら 何もしない
        guard self.within(ranks: rank) else { return self }

        var raw: BigUInt = self.rawValue
        do {
            raw = g.lookUpTable.contents(self).get_ranks_mask_bit(ranks: rank)
                   
//            print(rank)
//            print(self.fileWidth)
//            print(self.rankWidth)
//            print(g.lookUpTable.contents(self).get_ranks_mask_bit(ranks: 0).binaryString)
//            print(g.lookUpTable.contents(self).get_ranks_mask_bit(ranks: 1).binaryString)
//            print(g.lookUpTable.contents(self).get_ranks_mask_bit(ranks: 2).binaryString)
//            print(g.lookUpTable.contents(self).get_ranks_mask_bit(ranks: 3).binaryString)
//            print(g.lookUpTable.contents(self).get_ranks_mask_bit(ranks: 4).binaryString)
//            print(g.lookUpTable.contents(self).get_ranks_mask_bit(ranks: 5).binaryString)
//            g.lookUpTable.contents(self).get_ranks_mask_bit(ranks: rank)
//            let line = g.lookUpTable.get_filled_one_line(rankWidth: self.rankWidth)
//            let mask = line << ((rank - 1) * (self.fileWidth))
//            raw |= mask
        }
        
        return Bitboard(rawValue: raw)
    }
    
    /// 指定した(file, rank)のbitを立ち上げる
    /// - Parameters:
    ///   - file: <#file description#>
    ///   - rank: <#rank description#>
    func bitset(file: Int, rank: Int) -> Self {
        
        // 範囲外を指していたら 何もしない
        guard self.within(file: file, rank: rank) else { return self }

        var raw: BigUInt = self.rawValue
        do {
            let bit: BigUInt = 1
            let mask = bit << ((file - 1) + ((rank - 1) * (self.fileWidth)))
            raw |= mask
        }
        
        return Bitboard(rawValue: raw)
    }
    
    
    //
    // MARK: bitunset
    //
    
    /// 指定したfile列のbitを落とす
    /// - Parameter file: <#file description#>
    func bitunset(file: Int) -> Self {
        
        // 範囲外を指していたら 何もしない
        guard self.within(files: file) else { return self }

        var raw: BigUInt = self.rawValue
        do {
            let mask = (g.lookUpTable.contents(self).get_files_mask_bit(files: file) | g.lookUpTable.contents(self).termBit)
//            var mask: BigUInt = 0
//            let _mask_: BigUInt = 1 << (file - 1)
//            for i in 0..<self.rankWidth {
//                mask |= (_mask_ << (self.rankWidth * i))
//            }
            raw &= ~mask
        }
        
        return Bitboard(rawValue: raw)
    }
    
    /// 指定したrank行のbitを落とす
    /// - Parameter rank: <#rank description#>
    func bitunset(rank: Int) -> Self {
        
        // 範囲外を指していたら 何もしない
        guard self.within(ranks: rank) else { return self }
        
        var raw: BigUInt = self.rawValue
        do {
            let mask = (g.lookUpTable.contents(self).get_ranks_mask_bit(ranks: rank) | g.lookUpTable.contents(self).termBit)
//            let line = (g.lookUpTable[self.fileWidth, self.rankWidth].termBit | g.lookUpTable.get_filled_one_line(rankWidth: self.rankWidth) )
//            let mask = line << ((rank - 1) * (self.fileWidth))
            raw &= ~mask
        }
//
        return Bitboard(rawValue: raw)
    }
    
    /// 指定した(file, rank)のbitを落とす
    /// - Parameters:
    ///   - file: <#file description#>
    ///   - rank: <#rank description#>
    func bitunset(file: Int, rank: Int) -> Self {
        
        // 範囲外を指していたら 何もしない
        guard self.within(file: file, rank: rank) else { return self }

        var raw: BigUInt = self.rawValue
        do {
            let bit = (g.lookUpTable[self.fileWidth, self.rankWidth].termBit | 1 )
//            let bit: BigUInt = 1
            let mask = bit << ((file - 1) + ((rank - 1) * (self.fileWidth)))
            raw &= ~mask
        }
        
        return Bitboard(rawValue: raw)
    }
}
