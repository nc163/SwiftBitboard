//
//  Macro.swift
//  Bitboard
//
//  Created by noda on 2021/10/06.
//

import Foundation
import BigInt
//import 

//
// MARK: FILL_BIT
//



//

// bitboardの一番上の
func BB_TOP_RANKS (bb :BB) -> Int { return 1}
func BB__RANKS (bb :BB) -> Int { return 1}


//
// MARK: WIDTH_2_BITWITDH
//

/// 何Bit使用しているかを計算する
/// - Parameters:
///   - fileWidth: <#fileWidth description#>
///   - rankWidth: <#rankWidth description#>
/// - Returns: <#description#>
internal func WIDTH_2_BITWITDH(_ fileWidth: Int, _ rankWidth: Int) -> Int {
    return fileWidth * rankWidth
}

/// 横一列塗りつぶしたものを返す
/// - Parameter rankWidth: <#rankWidth description#>
/// - Returns: <#description#>
internal func RANKWIDTH(_ rankWidth: Int) -> Int {
    return (1..<(rankWidth)).reduce(1) { t, v in (t << 1) + 1 }
}
