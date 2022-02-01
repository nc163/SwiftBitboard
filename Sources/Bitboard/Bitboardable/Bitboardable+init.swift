//
//  Bitboard+init.swift
//  Bitboard
//
//  Created by noda on 2021/09/20.
//

import Foundation
import BigInt

public extension Bitboardable {
    
    
    /// <#Description#>
    /// - Parameters:
    ///   - fileWidth: <#fileWidth description#>
    ///   - rankWidth: <#rankWidth description#>
    /// - Throws: <#description#>
    init(fileWidth: Int, rankWidth: Int) {
        print("init(fileWidth: Int, rankWidth: Int) {")
        self.init(fileWidth: fileWidth, rankWidth: rankWidth, rawValue: BigUInt(0))
    }
    
//    init(fileWidth: Int, rankWidth: Int, pattern: Pattern) {
//        switch pattern {
//        case .Fill:
//            <#code#>
//        case .Dot:
//            <#code#>
//        case .White:
//            self.init(fileWidth: fileWidth, rankWidth: rankWidth, rawValue: BigUInt(0))
//        }
//    }
    
    init(clone: Self) {
        self.init(fileWidth: clone.fileWidth, rankWidth: clone.rankWidth, rawValue: clone.rawValue)
    }
    
    /// <#Description#>
    /// - Returns: <#description#>
    init(fill: Self) {
        self.init(fileWidth: fill.fileWidth, rankWidth: fill.rankWidth, rawValue: g.lookUpTable[fill.fileWidth, fill.rankWidth].maxRawValue)
    }
}

internal extension Bitboardable {
    
    /// <#Description#>
    /// - Parameters:
    ///   - fileWidth: <#fileWidth description#>
    ///   - rankWidth: <#rankWidth description#>
    ///   - rawValue: <#rawValue description#>
    /// - Throws: <#description#>
    init<T: FixedWidthInteger & UnsignedInteger>(fileWidth: Int, rankWidth: Int, rawValue: T) {
        print("init<T: FixedWidthInteger & UnsignedInteger>(fileWidth: Int, rankWidth: Int, rawValue: T) {")
        self.init(fileWidth: fileWidth, rankWidth: rankWidth, rawValue: BigUInt(rawValue))
    }
}
//
//enum Pattern {
//    case Fill;
//    case Dot;
//    case White;
//}
