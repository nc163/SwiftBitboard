//
//  Bitboard.swift
//  Bitboard
//
//  Created by yo_shin_o on 2021/07/26.
//

import Foundation
import BigInt
//import UIKit

/// <#Description#>
public struct Bitboard: Bitboardable {
    
    //
    // MARK: property
    //
    
    public let fileWidth: Int
    public let rankWidth: Int
    
    /// 生データ
    public let rawValue: BigUInt
    
    
    //
    // MARK: init
    //
    
    /// <#Description#>
    /// - Parameters:
    ///   - fileWidth: <#fileWidth description#>
    ///   - rankWidth: <#rankWidth description#>
    ///   - rawValue: <#rawValue description#>
    /// - Throws: <#description#>
    public init(fileWidth: Int, rankWidth: Int, rawValue: BigUInt) {
        
        guard Self.LargestRankRange.contains(rankWidth) && Self.LargestFileRange.contains(fileWidth) else {
            // 詳細にエラーを出す
            fatalError("")
        }
        
        self.fileWidth = fileWidth
        self.rankWidth = rankWidth
        
        do {
            // look up table
            let _ = g.lookUpTable.append(fileWidth: fileWidth, rankWidth: rankWidth) 
            self.rawValue = rawValue & g.lookUpTable[fileWidth, rankWidth].maxRawValue
        }
    }
    
    
    //
    // MARK: func
    //
    
    public func nonZeroBitpoints() -> [Coordinate] {
        var tmp = self.rawValue
        var retval = [Coordinate]()
        
        while tmp > 0 {
            let file = tmp.trailingZeroBitCount % self.fileWidth
            let rank = tmp.trailingZeroBitCount / self.fileWidth
            
            let pos = Coordinate(file: file + 1, rank: rank + 1)
            retval.append(pos)
            tmp &= ~(1 << tmp.trailingZeroBitCount)
        }
        
        return retval
    }

    /// 座標
    public struct Coordinate {
        public let file: Int
        public let rank: Int
        
        /// <#Description#>
        /// - Parameters:
        ///   - file: <#file description#>
        ///   - rank: <#rank description#>
        init(file: Int, rank: Int) {
            self.file = file
            self.rank = rank
        }
    }

}
