//
//  Bitboard+popcount.swift
//  Bitboard
//
//  Created by noda on 2021/09/20.
//

import Foundation
import BigInt

public extension Bitboardable {
    
    /// Bitboardの範囲内の立ち上がりビットをカウントする
    func popcount() -> Int {
        return rawValue.words.reduce(0) { count, w in count + w.nonzeroBitCount }
    }
    
    /// Bitboardの範囲内の、指定したfile列の立ち上がりビットをカウントする
    /// - Parameter file: <#file description#>
    func popcount(file: Int) -> Int {
        let mask = g.lookUpTable[fileWidth, rankWidth].max[.file, file]//.filledFile[file];
        return (mask & rawValue).words.reduce(0) { count, w in count + w.nonzeroBitCount }
    }
    
    /// Bitboardの範囲内の、指定したrank行の立ち上がりビットをカウントする
    /// - Parameter rank: <#rank description#>
    func popcount(rank: Int) -> Int {
        let mask = g.lookUpTable[fileWidth, rankWidth].max[.rank, rank]
        
        return (mask & rawValue).words.reduce(0) { count, w in count + w.nonzeroBitCount }
    }
}
