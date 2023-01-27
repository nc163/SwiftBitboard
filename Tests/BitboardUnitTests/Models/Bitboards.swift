@testable import Bitboard
import Foundation

struct AnyBitboard<T: FixedWidthInteger & UnsignedInteger>: Bitboard {
  typealias RawValue = T

  var rawValue: RawValue
  var fileWidth: Int
  var rankWidth: Int

  init() {
    let max: Int = Int(floor(sqrt(Double(RawValue.bitWidth))))

    self.fileWidth = Int.random(in: 1...max)
    self.rankWidth = Int.random(in: 1...max)
    self.rawValue = RawValue.random(in: 0...RawValue.max)
  }

  init(rawValue: RawValue, fileWidth: Int, rankWidth: Int) {
    self.rawValue = rawValue
    self.fileWidth = fileWidth
    self.rankWidth = rankWidth
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard2x2: Bitboard {

  typealias RawValue = UInt8

  var rawValue: RawValue
  var fileWidth: Int = 2
  var rankWidth: Int = 2

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard3x3: Bitboard {

  typealias RawValue = UInt16

  var rawValue: RawValue
  var fileWidth: Int = 3
  var rankWidth: Int = 3

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard4x4: Bitboard {

  typealias RawValue = UInt16

  var rawValue: RawValue
  var fileWidth: Int = 4
  var rankWidth: Int = 4

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard5x5: Bitboard {

  typealias RawValue = UInt32

  var rawValue: RawValue
  var fileWidth: Int = 5
  var rankWidth: Int = 5

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard6x6: Bitboard {

  typealias RawValue = UInt64

  var rawValue: RawValue
  var fileWidth: Int = 6
  var rankWidth: Int = 6

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard7x7: Bitboard {

  typealias RawValue = UInt64

  var rawValue: RawValue
  var fileWidth: Int = 7
  var rankWidth: Int = 7

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard8x8: Bitboard {

  typealias RawValue = UInt64

  var rawValue: RawValue
  var fileWidth: Int = 8
  var rankWidth: Int = 8

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard9x9: Bitboard {

  typealias RawValue = UInt128

  var rawValue: RawValue
  var fileWidth: Int = 9
  var rankWidth: Int = 9

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard10x10: Bitboard {

  typealias RawValue = UInt128

  var rawValue: RawValue
  var fileWidth: Int = 10
  var rankWidth: Int = 10

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard11x11: Bitboard {

  typealias RawValue = UInt128

  var rawValue: RawValue
  var fileWidth: Int = 11
  var rankWidth: Int = 11

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

//
//struct Bitboard32: Bitboard {
//
//  typealias RawValue = UInt32
//
//  var rawValue: RawValue
//  var fileWidth: Int
//  var rankWidth: Int
//
//  func clone() -> Self {
//      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
//  }
//}
//
//struct Bitboard64: Bitboard {
//
//  typealias RawValue = UInt64
//
//  var rawValue: RawValue
//  var fileWidth: Int
//  var rankWidth: Int
//
//  func clone() -> Self {
//      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
//  }
//}
//
//struct Bitboard128: Bitboard {
//
//  typealias RawValue = UInt128
//
//  var rawValue: RawValue
//  var fileWidth: Int
//  var rankWidth: Int
//
//  func clone() -> Self {
//      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
//  }
//}
