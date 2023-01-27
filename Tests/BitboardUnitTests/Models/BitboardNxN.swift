import Bitboard
import Foundation

struct Bitboard2x2: MutableBitboard {

  typealias RawValue = UInt8

  var rawValue: RawValue
  var fileWidth: Int = 2
  var rankWidth: Int = 2

  static func random() -> Self {
    let max: Int = Int(floor(sqrt(Double(RawValue.bitWidth))))

    return self.init(rawValue: RawValue.random(in: 0...RawValue.max), fileWidth: Int.random(in: 2...max), rankWidth: Int.random(in: 2...max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard3x3: MutableBitboard {

  typealias RawValue = UInt16

  var rawValue: RawValue
  var fileWidth: Int = 3
  var rankWidth: Int = 3

  static func random() -> Self {
    let max: Int = Int(floor(sqrt(Double(RawValue.bitWidth))))

    return self.init(rawValue: RawValue.random(in: 0...RawValue.max), fileWidth: Int.random(in: 2...max), rankWidth: Int.random(in: 2...max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard4x4: MutableBitboard {

  typealias RawValue = UInt16

  var rawValue: RawValue
  var fileWidth: Int = 4
  var rankWidth: Int = 4

  static func random() -> Self {
    let max: Int = Int(floor(sqrt(Double(RawValue.bitWidth))))

    return self.init(rawValue: RawValue.random(in: 0...RawValue.max), fileWidth: Int.random(in: 2...max), rankWidth: Int.random(in: 2...max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard5x5: MutableBitboard {

  typealias RawValue = UInt32

  var rawValue: RawValue
  var fileWidth: Int = 5
  var rankWidth: Int = 5

  static func random() -> Self {
    let max: Int = Int(floor(sqrt(Double(RawValue.bitWidth))))

    return self.init(rawValue: RawValue.random(in: 0...RawValue.max), fileWidth: Int.random(in: 2...max), rankWidth: Int.random(in: 2...max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard6x6: MutableBitboard {

  typealias RawValue = UInt64

  var rawValue: RawValue
  var fileWidth: Int = 6
  var rankWidth: Int = 6

  static func random() -> Self {
    let max: Int = Int(floor(sqrt(Double(RawValue.bitWidth))))

    return self.init(rawValue: RawValue.random(in: 0...RawValue.max), fileWidth: Int.random(in: 2...max), rankWidth: Int.random(in: 2...max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard7x7: MutableBitboard {

  typealias RawValue = UInt64

  var rawValue: RawValue
  var fileWidth: Int = 7
  var rankWidth: Int = 7

  static func random() -> Self {
    let max: Int = Int(floor(sqrt(Double(RawValue.bitWidth))))

    return self.init(rawValue: RawValue.random(in: 0...RawValue.max), fileWidth: Int.random(in: 2...max), rankWidth: Int.random(in: 2...max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard8x8: MutableBitboard {

  typealias RawValue = UInt64

  var rawValue: RawValue
  var fileWidth: Int = 8
  var rankWidth: Int = 8

  static func random() -> Self {
    let max: Int = Int(floor(sqrt(Double(RawValue.bitWidth))))

    return self.init(rawValue: RawValue.random(in: 0...RawValue.max), fileWidth: Int.random(in: 2...max), rankWidth: Int.random(in: 2...max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard9x9: MutableBitboard {

  typealias RawValue = UInt128

  var rawValue: RawValue
  var fileWidth: Int = 9
  var rankWidth: Int = 9

  static func random() -> Self {
    let max: Int = Int(floor(sqrt(Double(RawValue.bitWidth))))

    return self.init(rawValue: RawValue.random(in: 0...RawValue.max), fileWidth: Int.random(in: 2...max), rankWidth: Int.random(in: 2...max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard10x10: MutableBitboard {

  typealias RawValue = UInt128

  var rawValue: RawValue
  var fileWidth: Int = 10
  var rankWidth: Int = 10

  static func random() -> Self {
    let max: Int = Int(floor(sqrt(Double(RawValue.bitWidth))))

    return self.init(rawValue: RawValue.random(in: 0...RawValue.max), fileWidth: Int.random(in: 2...max), rankWidth: Int.random(in: 2...max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}

struct Bitboard11x11: MutableBitboard {

  typealias RawValue = UInt128

  var rawValue: RawValue
  var fileWidth: Int = 11
  var rankWidth: Int = 11

  static func random() -> Self {
    let max: Int = Int(floor(sqrt(Double(RawValue.bitWidth))))

    return self.init(rawValue: RawValue.random(in: 0...RawValue.max), fileWidth: Int.random(in: 2...max), rankWidth: Int.random(in: 2...max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}
