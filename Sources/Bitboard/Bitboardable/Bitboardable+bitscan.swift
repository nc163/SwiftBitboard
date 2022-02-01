//
//  Bitboard+bitscan.swift
//  Bitboard
//
//  Created by noda on 2021/09/20.
//

import Foundation
import BigInt

public extension Bitboardable {
    
    /// Bitboardの範囲内の立ち上がりビットがあるかどうか
    func bitscan() -> Bool {
        return self.rawValue > 0
    }
    
    /// Bitboardの範囲内の、指定したfile列の立ち上がりビットがあるかどうか
    /// - Parameter file: <#file description#>
    func bitscan(file: Int) -> Bool {
        
        // 範囲外を指していたら false
        guard self.within(files: file) else { return false }

        var any = self.rawValue
        do {
            let mask = (g.lookUpTable.contents(self).get_files_mask_bit(files: file) | g.lookUpTable.contents(self).termBit)
//            var mask: BigUInt = 0
//            let _mask_: BigUInt = 1 << (file - 1)
//            for i in 0..<self.rankWidth {
//                mask |= (_mask_ << (self.rankWidth * i))
//            }
            any = any & mask
        }
        
        return any > 0
    }
    
    /// Bitboardの範囲内の、指定したrank行の立ち上がりビットがあるかどうか
    /// - Parameter rank: <#rank description#>
    func bitscan(rank: Int) -> Bool {
        
        // 範囲外を指していたら false
        guard self.within(ranks: rank) else { return false }
        
        var any = self.rawValue
        do {
            let mask = (g.lookUpTable.contents(self).get_ranks_mask_bit(ranks: rank) | g.lookUpTable.contents(self).termBit)
//            let line = g.lookUpTable[self.fileWidth, self.rankWidth].fillValues[.rank, self.rankWidth]
//            let mask = line << ((rank - 1) * (self.fileWidth))
            any = any & mask
        }
        
        return any > 0
    }
    
    /// Bitboardの範囲内の、指定した(file, rank)が立ち上がりビットかどうか
    /// - Parameters:
    ///   - file: <#file description#>
    ///   - rank: <#rank description#>
    func bitscan(file: Int, rank: Int) -> Bool {
        
        // 範囲外を指していたら false
        guard self.within(file: file, rank: rank) else { return false }
        
        var any = self.rawValue
        do {
            let bit: BigUInt = 1
            let mask = bit << ((file - 1) + ((rank - 1) * (self.fileWidth)))
            any = any & mask
        }
        return any > 0
    }
    
}
