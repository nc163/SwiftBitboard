//
//  Bitboardable+property.swift
//  Bitboard
//
//  Created by noda on 2021/09/20.
//

import Foundation
import BigInt

//
// MARK: internal
//
internal extension Bitboardable {
    
    //
    // MARK: static property
    //
    
    static var UseLookUpTable: Bool { true }
    
    static var LargestFileRange: ClosedRange<Int> { Self.MinFileWidth...Self.MaxFileWidth }
    static var LargestRankRange: ClosedRange<Int> { Self.MinRankWidth...Self.MaxRankWidth }
    
    //
    // MARK: property
    //
    
    /// 有効なbit幅
    var usebitWidth: Int { self.fileWidth * self.rankWidth }
    
}

//
// MARK: public
//
public extension Bitboardable {
    
    //
    // MARK: static property
    //
    
    // 一辺が1のbitboardは必要ないので最小値は2
    
    static var MinFileWidth: Int { get { 2 } }
    static var MinRankWidth: Int { get { 2 } }
    
    // CustomStringConvertibleの幅の文字がアルファベットなので最大値は26文字
    
    static var MaxFileWidth: Int { get { 26 } }
    static var MaxRankWidth: Int { get { 26 } }
    
    //
    // MARK: property
    //
    
    /// 正方形かどうか
    var isSquare: Bool { self.fileWidth == self.rankWidth}
    
    var fileRange: ClosedRange<Int> { .init(uncheckedBounds: (lower: 1, upper: self.fileWidth)) }
    var rankRange: ClosedRange<Int> { .init(uncheckedBounds: (lower: 1, upper: self.rankWidth)) }
}
