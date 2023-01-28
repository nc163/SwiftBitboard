import Bitboard
import Foundation

struct Bitboard2x2: MutableBitboard {

  typealias RawValue = UInt8

  var rawValue: RawValue
  var fileWidth: Int = 2
  var rankWidth: Int = 2

  init(rawValue: RawValue) {
    self.rawValue = rawValue
  }

  static func random() -> Self {
    return self.init(rawValue: RawValue.random(in: 0...RawValue.max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue)
  }
}

struct Bitboard3x3: MutableBitboard {

  typealias RawValue = UInt16

  var rawValue: RawValue
  var fileWidth: Int = 3
  var rankWidth: Int = 3

  init(rawValue: RawValue) {
    self.rawValue = rawValue
  }

  static func random() -> Self {
    return self.init(rawValue: RawValue.random(in: 0...RawValue.max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue)
  }
}

struct Bitboard4x4: MutableBitboard {

  typealias RawValue = UInt16

  var rawValue: RawValue
  var fileWidth: Int = 4
  var rankWidth: Int = 4

  init(rawValue: RawValue) {
    self.rawValue = rawValue
  }

  static func random() -> Self {
    return self.init(rawValue: RawValue.random(in: 0...RawValue.max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue)
  }
}

struct Bitboard5x5: MutableBitboard {

  typealias RawValue = UInt32

  var rawValue: RawValue
  var fileWidth: Int = 5
  var rankWidth: Int = 5

  init(rawValue: RawValue) {
    self.rawValue = rawValue
  }

  static func random() -> Self {
    return self.init(rawValue: RawValue.random(in: 0...RawValue.max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue)
  }
}

struct Bitboard6x6: MutableBitboard {

  typealias RawValue = UInt64

  var rawValue: RawValue
  var fileWidth: Int = 6
  var rankWidth: Int = 6

  init(rawValue: RawValue) {
    self.rawValue = rawValue
  }

  static func random() -> Self {
    return self.init(rawValue: RawValue.random(in: 0...RawValue.max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue)
  }
}

struct Bitboard7x7: MutableBitboard {

  typealias RawValue = UInt64

  var rawValue: RawValue
  var fileWidth: Int = 7
  var rankWidth: Int = 7

  init(rawValue: RawValue) {
    self.rawValue = rawValue
  }

  static func random() -> Self {
    return self.init(rawValue: RawValue.random(in: 0...RawValue.max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue)
  }
}

struct Bitboard8x8: MutableBitboard {

  typealias RawValue = UInt64

  var rawValue: RawValue
  var fileWidth: Int = 8
  var rankWidth: Int = 8

  init(rawValue: RawValue) {
    self.rawValue = rawValue
  }

  static func random() -> Self {
    return self.init(rawValue: RawValue.random(in: 0...RawValue.max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue)
  }
}

struct Bitboard9x9: MutableBitboard {

  typealias RawValue = UInt128

  var rawValue: RawValue
  var fileWidth: Int = 9
  var rankWidth: Int = 9

  init(rawValue: RawValue) {
    self.rawValue = rawValue
  }

  static func random() -> Self {
    return self.init(rawValue: RawValue.random(in: 0...RawValue.max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue)
  }
}

struct Bitboard10x10: MutableBitboard {

  typealias RawValue = UInt128

  var rawValue: RawValue
  var fileWidth: Int = 10
  var rankWidth: Int = 10

  init(rawValue: RawValue) {
    self.rawValue = rawValue
  }

  static func random() -> Self {
    return self.init(rawValue: RawValue.random(in: 0...RawValue.max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue)
  }
}

struct Bitboard11x11: MutableBitboard {

  typealias RawValue = UInt128

  var rawValue: RawValue
  var fileWidth: Int = 11
  var rankWidth: Int = 11

  init(rawValue: RawValue) {
    self.rawValue = rawValue
  }

  static func random() -> Self {
    return self.init(rawValue: RawValue.random(in: 0...RawValue.max))
  }

  func clone() -> Self {
      .init(rawValue: self.rawValue)
  }
}
