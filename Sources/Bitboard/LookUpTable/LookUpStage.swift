//
//  LookUpStage.swift
//  Bitboard
//
//  Created by noda on 2021/09/27.
//

import Foundation
import BigInt

//
//
fileprivate let FILL_BITS = [
    B00000000000000000000000000,
    B00000000000000000000000001,
    B00000000000000000000000011,
    B00000000000000000000000111,
    B00000000000000000000001111,
    B00000000000000000000011111,
    B00000000000000000000111111,
    B00000000000000000001111111,
    B00000000000000000011111111,
    B00000000000000000111111111,
    B00000000000000001111111111,
    B00000000000000011111111111,
    B00000000000000111111111111,
    B00000000000001111111111111,
    B00000000000011111111111111,
    B00000000000111111111111111,
    B00000000001111111111111111,
    B00000000011111111111111111,
    B00000000111111111111111111,
    B00000001111111111111111111,
    B00000011111111111111111111,
    B00000111111111111111111111,
    B00001111111111111111111111,
    B00011111111111111111111111,
    B00111111111111111111111111,
    B01111111111111111111111111,
    B11111111111111111111111111,
];

//
//
fileprivate let TOP_BITS = [
    B00000000000000000000000000,
    B00000000000000000000000001,
    B00000000000000000000000010,
    B00000000000000000000000100,
    B00000000000000000000001000,
    B00000000000000000000010000,
    B00000000000000000000100000,
    B00000000000000000001000000,
    B00000000000000000010000000,
    B00000000000000000100000000,
    B00000000000000001000000000,
    B00000000000000010000000000,
    B00000000000000100000000000,
    B00000000000001000000000000,
    B00000000000010000000000000,
    B00000000000100000000000000,
    B00000000001000000000000000,
    B00000000010000000000000000,
    B00000000100000000000000000,
    B00000001000000000000000000,
    B00000010000000000000000000,
    B00000100000000000000000000,
    B00001000000000000000000000,
    B00010000000000000000000000,
    B00100000000000000000000000,
    B01000000000000000000000000,
    B10000000000000000000000000,
];

struct LookUpStage {
    let fileWidth: Int
    let rankWidth: Int
    let maxRawValue: BigUInt;
    let termBit: BigUInt;
    let max: FillValues
    
    init(fileWidth: Int, rankWidth: Int) {
        
        //
        do {
            /// 一行ビットを立てて 残りを一行ずつずらしてビットを埋める
            var maxRawValue: BigUInt = 0
            for _ in 0..<(fileWidth * rankWidth) {
                maxRawValue = (maxRawValue << 1)
                maxRawValue += 1
            }
            self.maxRawValue = maxRawValue;
        }
        
        // termBit
        do {
            let termBit: BigUInt =  1 << (rankWidth * fileWidth);
            self.termBit = termBit;
        }
        self.fileWidth = fileWidth;
        self.rankWidth = rankWidth;
        self.max = .init(fileWidth: fileWidth, rankWidth: rankWidth)
    }
    
    /// 指定したRank列の情報のみをマスクするマスクビット
    /// - Parameter ranks: <#ranks description#>
    /// - Returns: <#description#>
    func get_ranks_mask_bit(ranks: [Int]) -> BigUInt {
        ranks.reduce(0) { result, r in
            return result | (FILL_BITS[self.rankWidth] << ((r - 1) * self.rankWidth))
        }
    }
    func get_ranks_mask_bit(ranks: Int ...) -> BigUInt {
        self.get_ranks_mask_bit(ranks: ranks)
    }
    
    
    /// 指定したFile列の情報のみをマスクするマスクビット
    /// - Parameters:
    ///   - bb: <#bb description#>
    ///   - files: <#files description#>
    /// - Returns: <#description#>
    func get_files_mask_bit(files: [Int]) -> BigUInt {
        let top_mask = files.reduce(0) { result, f in
            return result | TOP_BITS[f]
        }
        
        return (1...self.rankWidth).reduce(0) { result, r in
            return result | (top_mask << ((r-1) * self.rankWidth))
        }
    }
    func get_files_mask_bit(files: Int ...) -> BigUInt {
        self.get_files_mask_bit(files: files)
    }
}

//
//
//
struct FillValues {
    
    let files: [Int: BigUInt];
    let ranks: [Int: BigUInt];
    
    
    subscript(d: Direction, count: Int) -> BigUInt {
        get {
            switch d {
            case .file:
                return self.files[count]!
            case .rank:
                return self.ranks[count]!
            }
        }
    }
    
    init(fileWidth: Int, rankWidth: Int) {
        // filled File
        do {
            var filledFile: [Int: BigUInt] = [:]
            (1...fileWidth).forEach { file in
                filledFile[file] = FILL_FILE_BITS(fileWidth, rankWidth, file);
            }
            self.files = filledFile;
        }
        
        // filled Rank
        do {
            var filledRank: [Int: BigUInt] = [:]
            (1...rankWidth).forEach { file in
                filledRank[file] = FILL_RANK_BITS(fileWidth, rankWidth, file);
            }
            self.ranks = filledRank;
        }
    }
}

/// 縦一列のbit
/// 5x5のbitboardだと
/// `*-----`
/// `*-----`
/// `*-----`
/// `*-----`
/// `*-----`
/// 👆みたいなの
/// - Parameter fileWidth:
/// - Parameter rankWidth:
/// - Parameter file:
/// - Returns: <#description#>
fileprivate func FILL_FILE_BITS(_ fileWidth: Int, _ rankWidth: Int, _ file: Int) -> BigUInt {
    let line: BigUInt = (1 << (file - 1)) // ---*-----
    let value: BigUInt = Array(1...rankWidth).reduce(0) { result, value in
        
        return (result << fileWidth) + line
    }
//    print("fileWidth = \(fileWidth), rankWidth = \(rankWidth), file = \(file)")
//    print("line  = " + line.binaryString)
//    print("value = " + value.binaryString)
    return value
//
//    /// 文字列リテラルを使うと効率悪いけどlookuptableの初期化でしか使わないから追求しないで....
//    var value = [1...fileWidth].reduce("1") { s, s in s + "0" };
//    value = [1...rankWidth].reduce(value) { s, s in s + value };
//    let retval = BigUInt.init(value, radix: 2)!
//
//    return BigUInt.init(value, radix: 2)!
}

/// 横一列のbit
/// 5x5のbitboardだと
/// `*****`
/// `-----`
/// `-----`
/// `-----`
/// `-----`
/// 👆みたいなの
/// - Parameter fileWidth:
/// - Parameter rankWidth:
/// - Parameter rank:
/// - Returns: <#description#>
fileprivate func FILL_RANK_BITS(_ fileWidth: Int, _ rankWidth: Int, _ rank: Int) -> BigUInt {
    /// 文字列リテラルを使うと効率悪いけどlookuptableの初期化でしか使わないから追求しないで....
    let value = [1...fileWidth].reduce("1") { s, s in s + "1" }
    return BigUInt.init(value, radix: 2)!
}

