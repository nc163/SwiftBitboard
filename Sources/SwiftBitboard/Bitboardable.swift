import Foundation

public protocol Bitboardable: FixedSizeable, Comparable, Hashable, Equatable where Element == Bool {

  // e.g. UInt8, UInt16, UInt32, UInt64 etc
  associatedtype RawValue: FixedWidthInteger & UnsignedInteger

  var fileWidth: Int { get }
  var rankWidth: Int { get }
  var rawValue: RawValue { get }
  
  init(rawValue: RawValue)
  
  func clone(rawValue: RawValue?) -> Self
  
//  func bitscan(forFile file: Int) -> Bool
//  func bitscan(forRank rank: Int) -> Bool
//  func bitscan(forFile file: Int, forRank rank: Int) -> Bool
//  mutating func bitset(forFile file: Int) -> Bool
//  mutating func bitset(forRank rank: Int) -> Bool
//  mutating func bitset(forFile file: Int, forRank rank: Int) -> Bool
//  mutating func bitunset(forFile file: Int) -> Bool
//  mutating func bitunset(forRank rank: Int) -> Bool
//  mutating func bitunset(forFile file: Int, forRank rank: Int) -> Bool
//  mutating func rotate(_ digree: Digree) -> Bool
//  mutating func mirror(_ mirror: Mirror) -> Bool
//  static prefix func ~ (arg: Self) -> Self
//  static func & (_ lhs: Self,  _ rhs: Self) -> Self
//  static func | (_ lhs: Self, _ rhs: Self) -> Self
//  static func ^ (_ lhs: Self, _ rhs: Self) -> Self
//  static func << (lhs: Self, reg: Digree) -> Self
//  static func >> (lhs: Self, reg: Digree) -> Self
}
