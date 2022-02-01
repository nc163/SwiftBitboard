//
//  +extension.swift
//  Bitboard
//
//  Created by yo_shin_o on 2021/08/14.
//

import Foundation
import BigInt

internal struct LookUpTable {
    
    //
    // MARK: property
    //
    
    // 縦の列番号
    fileprivate typealias File = Int
    // 横の列番号
    fileprivate typealias Rank = Int
    
    /// <#Description#>
    fileprivate var stages: [File: [Rank: LookUpStage] ] = [:]

    //
    // MARK: define
    //
    
    struct Macro { }
}

internal extension LookUpTable {
    
    subscript(fileWidth: Int, rankWidth: Int) -> LookUpStage {
        get {
            return self.stages[fileWidth]![rankWidth]!
        }
    }
    
    /// <#Description#>
    /// - Parameters:
    ///   - fileWidth: <#fileWidth description#>
    ///   - rankWidth: <#rankWidth description#>
    mutating func append(fileWidth: Int, rankWidth: Int) {
        
        // 保存されているかどうか
        if index(fileWidth, rankWidth) {
            debugPrint("[LookUpTable] ⏭️ func append skip...")
            return
        }
        
        self.stages[fileWidth] = [:];
        self.stages[fileWidth]![rankWidth] = LookUpStage.init(fileWidth: fileWidth, rankWidth: rankWidth)
        
        debugPrint("[LookUpTable] 💾 func append \(fileWidth):\(rankWidth)" )
    }
    
    /// <#Description#>
    /// - Parameters:
    ///   - fileWidth: <#fileWidth description#>
    ///   - rankWidth: <#rankWidth description#>
    fileprivate func index(_ fileWidth: Int, _ rankWidth: Int) -> Bool {
        guard stages.keys.contains(fileWidth) else { return false }
        return stages[fileWidth]!.keys.contains(rankWidth)
    }
    
    /// <#Description#>
    /// - Parameters:
    ///   - fileWidth: <#fileWidth description#>
    ///   - rankWidth: <#rankWidth description#>
    func contents<T: Bitboardable>(_ bb: T) -> LookUpStage {
        return stages[bb.fileWidth]![bb.rankWidth]!
    }
}
