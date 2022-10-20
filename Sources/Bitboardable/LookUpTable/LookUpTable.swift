//
//  +extension.swift
//  Bitboard
//
//  Created by yo_shin_o on 2021/08/14.
//

import Foundation
import BigInt

internal struct LookUpTable {

    subscript(size: Size) -> LookUpStage {
        self.stages[size]!
    }

    fileprivate var stages: [Size: LookUpStage] = [:]

    /// <#Description#>
    /// - Parameters:
    ///   - fileWidth: <#fileWidth description#>
    ///   - rankWidth: <#rankWidth description#>
    mutating func append(_ bb: Bitboardable) {
        
        // 保存されているかどうか
        if index(bb.size) {
            debugPrint("[LookUpTable] ⏭️ func append skip...")
            return
        }
        
        self.stages[bb.size] = LookUpStage.init(bitboard: bitboard)
        
        debugPrint("[LookUpTable] 💾 func append \(fileWidth):\(rankWidth)" )
    }
    
    /// <#Description#>
    /// - Parameters:
    ///   - fileWidth: <#fileWidth description#>
    ///   - rankWidth: <#rankWidth description#>
    fileprivate func index(_ bb: Bitboardable) -> Bool {
        guard stages.keys.contains(bb.size) else { return false }
        return stages[bb.size]!.keys.contains(bb.size)
    }
    
    /// <#Description#>
    /// - Parameters:
    ///   - fileWidth: <#fileWidth description#>
    ///   - rankWidth: <#rankWidth description#>
    func contents<T: Bitboardable>(_ bb: T) -> LookUpStage {
        return stages[bb.size]!
    }
}
