//
//  Bitboardable+internal.swift
//  Bitboard
//
//  Created by usagi on 2021/09/20.
//

import Foundation
import BigInt

internal extension Bitboardable {
    
    //
    // MARK: static func
    //
    
    /// <#Description#>
    /// - Parameters:
    ///   - fileWidth: <#fileWidth description#>
    ///   - rankWidth: <#rankWidth description#>
    /// - Returns: <#description#>
    static func RangeOfCondition(fileWidth: Int, rankWidth: Int) -> Bool {
        return LargestFileRange.contains(fileWidth) && LargestRankRange.contains(rankWidth)
    }
    
    /// <#Description#>
    /// - Parameters:
    ///   - bb1: <#bb1 description#>
    ///   - bb2: <#bb2 description#>
    /// - Returns: <#description#>
    static func SameSize(bb1: Self, bb2: Self) -> Bool {
        return bb1.fileWidth == bb1.fileWidth && bb2.rankWidth == bb2.rankWidth
    }
    
    
    //
    // MARK: internal
    //
    
    /// 計算結果の出力をサポートするマクロ
    /// - Parameter rawValue: <#rawValue description#>
    /// - Returns: <#description#>
    func Bitboard(rawValue: BigUInt) -> Self {
        Self.init(fileWidth: self.fileWidth, rankWidth: self.rankWidth, rawValue: rawValue)
    }
    
}


internal extension Bitboardable {

    //
    // MARK: func
    //
    
    // within
    // bitboardの範囲内を指定しているかどうかを返す
    
    /// 範囲内の列を指定しているかどうか
    /// - Parameter files: <#file description#>
    /// - Returns: <#description#>
    func within(files: [Int]) -> Bool {
        return files.contains(where: self.fileRange.contains)
    }
    func within(files: Int ...) -> Bool {
        return self.within(files: files)
    }
    
    
    /// 範囲内の行を指定しているかどうか
    /// - Parameter ranks: <#rank description#>
    /// - Returns: <#description#>
    func within(ranks: [Int]) -> Bool {
        return ranks.contains(where: self.rankRange.contains)
    }
    func within(ranks: Int ...) -> Bool {
        return self.within(ranks: ranks)
    }
    
    /// 範囲内を指定しているかどうか
    /// - Parameters:
    ///   - file: <#file description#>
    ///   - rank: <#rank description#>
    /// - Returns: <#description#>
    func within(file: Int, rank: Int) -> Bool {
        self.fileRange.contains(file) && self.rankRange.contains(rank)
    }
    
    
    /// rawValueが有効範囲以内に収まっているかを確認
    /// - Parameter rawValue: <#rawValue description#>
    /// - Returns: <#description#>
    func within(rawValue: BigUInt) -> Bool {
        if(rawValue > 0) {
            // ビット幅のチェックしている
            // 4x4のbitboardなら 16bit使うので、rawValueは16bit以内に収まる値かどうか
            let bitWidth = BigUInt.init(rawValue).bitWidth
            guard(self.usebitWidth >= bitWidth) else {
                return false
            }
        }
        return true
    }
    
    
    
    
    
    
    
    
    
    
    
    // __try_out_of_range__
    
    /// 範囲外の列を指定した場合にエラーを起こす
    /// - Parameter file: 列
    /// - Throws: BitboardErrors.outOfRange
    func __try_out_of_range__(file: Int) throws {
        
        guard self.within(files: file) else {
            throw BitboardErrors.outOfRange("\(type(of: self))の範囲外を参照しました(\(file))");
        }
    }
    
    /// 範囲外の行を指定した場合にエラーを起こす
    /// - Parameter rank: 行
    /// - Throws: BitboardErrors.outOfRange
    func __try_out_of_range__(rank: Int) throws {
        
        guard self.within(ranks: rank) else {
            throw BitboardErrors.outOfRange("\(type(of: self))の範囲外を参照しました(\(rank))");
        }
    }
    
    /// 範囲外を指定した場合にエラーを起こす
    /// - Parameters:
    ///   - file: 列
    ///   - rank: 行
    /// - Throws: BitboardErrors.outOfRange
    func __try_out_of_range__(file: Int, rank: Int) throws {
        
        guard self.within(file: file, rank: rank) else {
            throw BitboardErrors.outOfRange("\(type(of: self))の範囲外を参照しました(\(file), \(rank))");
        }
    }
//
//    /// 同じサイズかどうか
//    /// - Parameters:
//    ///   - lhs: <#lhs description#>
//    ///   - rhs: <#rhs description#>
//    /// - Throws: <#description#>
//    /// - Returns: <#description#>
//    static func __try_same_size__(_ lhs: Self, _ rhs: Self) throws -> Bool {
//        guard lhs.size == rhs.size else {
//            throw BitboardErrors.arithmetic("")
//        }
//        return true
//    }
}
