//
//  Alias.swift
//  Bitboard
//
//  Created by usagi on 2021/10/17.
//

import Foundation
import BigInt

//
// MARK:
//

// bitboard
public typealias BB = Bitboard

// bitboardの生データ
public typealias RawValue = BigUInt

// bitboardの 何番目の縦列かを表す
public typealias BB_FILES = Int

// bitboardの 何番目の横列かを表す
public typealias BB_RANKS = Int

// bitboardの縦列を表す
public typealias BB_FILE = RawValue

// bitboardの横列を表す
public typealias BB_RANK = RawValue
