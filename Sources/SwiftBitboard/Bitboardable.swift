import Foundation

public protocol Bitboardable: FixedSizeable, Comparable, Hashable, Equatable where Element == Bool {

  // e.g. UInt8, UInt16, UInt32, UInt64 etc
  associatedtype RawValue: FixedWidthInteger & UnsignedInteger

  var fileWidth: Int { get }
  var rankWidth: Int { get }
  var rawValue: RawValue { set get }
  
  init(rawValue: RawValue)
  
  func clone(rawValue: RawValue?) -> Self
  
  static prefix func ~ (arg: Self) -> Self
  static func & (_ lhs: Self,  _ rhs: Self) -> Self
  static func | (_ lhs: Self, _ rhs: Self) -> Self
  static func ^ (_ lhs: Self, _ rhs: Self) -> Self
  static func == (_ lhs: Self,  _ rhs: Self) -> Bool
//  static func << (lhs: Self, reg: Digree) -> Self
//  static func >> (lhs: Self, reg: Digree) -> Self
}

extension Bitboardable {



  /// - Parameters:
  ///   - file: <#file description#>
  ///   - rank: <#rank description#>
  public func bitscan(forFile file: Int, forRank rank: Int) -> Bool {
    return self.rawValue & mask(forFile: file, forRank: rank) > 0
  }

  /// - Parameters:
  ///   - file: <#file description#>
  ///   - rank: <#rank description#>
  public mutating func bitset(forFile file: Int, forRank rank: Int) {
    self.rawValue |= mask(forFile: file, forRank: rank)
  }

  /// - Parameters:
  ///   - file: <#file description#>
  ///   - rank: <#rank description#>
  public mutating func bitunset(forFile file: Int, forRank rank: Int) {
    self.rawValue &= ~mask(forFile: file, forRank: rank)
  }



  public mutating func rotate(_ digree: Digree) {
    // bitwidth が 2^n の場合しか処理をできない
    guard self.isBitWidthPowerOfTwo && self.square else {
        return
    }

    guard digree == .deg0 || digree == .deg180 || digree == .deg360 else {
        return
    }

    let rotate_count = digree.rawValue / 180

    var next: Self.RawValue = self.rawValue
    for _ in 0..<rotate_count {
        next = rotate180(fileWidth: self.fileWidth, rankWidth: self.rankWidth, rawValue: next)

        /// bitboardはSelf.RawValueの一部しか使っていないが、getBitRotate90ではSelf.RawValue全体を回転させている
        /// ので回転させた後で値の先頭をbitboardの先頭になるように辻褄を合わせる必要がある。
        let shift: Int = Self.RawValue.bitWidth - (self.rankWidth * (self.fileWidth - 1) + self.fileWidth)
        next = Self.RawValue(next) >> shift
    }
    self.rawValue = next
  }
  
  
  
  public mutating func mirror(_ mirror: Mirror) {
    return
  }
}
