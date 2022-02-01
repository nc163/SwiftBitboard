//
//  Bitboard+operater.swift
//  Bitboard
//
//  Created by noda on 2021/09/20.
//

import Foundation
import BigInt

public extension Bitboardable {
    
    //
    // MARK:
    //
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.rawValue == rhs.rawValue && lhs.fileWidth == rhs.fileWidth && lhs.rankWidth == rhs.rankWidth
    }
    
    
    //
    // MARK: 単項演算子
    //
    
    static prefix func ~ (x: Self) -> Self {
        let rawValue = (~x.rawValue) & g.lookUpTable[x.fileWidth, x.rankWidth].maxRawValue
        
        return Self.init(fileWidth: x.fileWidth, rankWidth: x.rankWidth, rawValue: rawValue)
    }
    
    
    //
    // MARK: 論理演算子
    //
    
    static func & (lhs: Self, rhs: Self) -> Self {
        guard SameSize(bb1: lhs, bb2: rhs) else {
            try! BitboardError(.arithmetic(""))
            fatalError("")
        }
        return Self.init(fileWidth: lhs.fileWidth, rankWidth: lhs.rankWidth, rawValue: lhs.rawValue & rhs.rawValue)
    }
    
    static func | (lhs: Self, rhs: Self) -> Self {
        guard SameSize(bb1: lhs, bb2: rhs) else {
            try! BitboardError(.arithmetic(""))
            fatalError("")
        }
        return Self.init(fileWidth: lhs.fileWidth, rankWidth: lhs.rankWidth, rawValue:lhs.rawValue | rhs.rawValue)
    }
    
    static func ^ (lhs: Self, rhs: Self) -> Self {
        guard SameSize(bb1: lhs, bb2: rhs) else {
            try! BitboardError(.arithmetic(""))
            fatalError()
        }
        return Self.init(fileWidth: lhs.fileWidth, rankWidth: lhs.rankWidth, rawValue:lhs.rawValue ^ rhs.rawValue)
    }
    
    static func << (lhs: Self, rhs: Int) -> Self {

        try! BitboardError(.notImplemented(""))

        return lhs
//        var retval: Self.RawValue = .init()
//
//        let max: Self.RawValue = Self.RawValue.max
//
//        lhs.RankRange.forEach {
//            let line = ~(max << lhs.fileWidth)
//            let mask = line << (($0 - 1) * (lhs.fileWidth))
//
//            retval |= (mask << rhs)
//        }
//
//        return try! Self.init(rawValue:retval, fileWidth: lhs.fileWidth, rankWidth: lhs.rankWidth)
    }

    static func >> (lhs: Self, rhs: Int) -> Self {

        try! BitboardError(.notImplemented(""))

        return lhs
//        var retval: Self.RawValue = .init()
//
//        let max: Self.RawValue = Self.RawValue.max
//
//        Array(1...lhs.rankWidth).forEach {
//            let line = ~(max << lhs.fileWidth)
//            let mask = line << (($0 - 1) * (lhs.fileWidth))
//
//            retval |= (mask >> rhs)
//        }
//
//        return try! Self.init(rawValue:retval, fileWidth: lhs.fileWidth, rankWidth: lhs.rankWidth)
    }
    
    
    //
    // MARK: 複合代入演算子
    //
    
    /// and
    /// - Parameters:
    ///   - lhs: <#lhs description#>
    ///   - rhs: <#rhs description#>
    static func &= (lhs: inout Self, rhs: Self) {
        lhs = lhs & rhs
    }
    
    
    /// or
    /// - Parameters:
    ///   - lhs: <#lhs description#>
    ///   - rhs: <#rhs description#>
    static func ^= (lhs: inout Self, rhs: Self) {
        lhs = lhs ^ rhs
    }
    
    
    /// xor
    /// - Parameters:
    ///   - lhs: <#lhs description#>
    ///   - rhs: <#rhs description#>
    static func |= (lhs: inout Self, rhs: Self) {
        lhs = lhs | rhs
    }
    
    
    /// <#Description#>
    /// - Parameters:
    ///   - lhs: <#lhs description#>
    ///   - rhs: <#rhs description#>
    static func <<= (lhs: inout Self, rhs: Int) {
        lhs = lhs << rhs
    }
    
    
    /// <#Description#>
    /// - Parameters:
    ///   - lhs: <#lhs description#>
    ///   - rhs: <#rhs description#>
    static func >>= (lhs: inout Self, rhs: Int) {
        lhs = lhs >> rhs
    }
    
}
