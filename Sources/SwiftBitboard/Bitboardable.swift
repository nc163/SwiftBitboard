import Foundation

public protocol Bitboardable: FixedSizeable, Comparable, Hashable, Equatable 
  where Index     == Coordinate,
        Element   == Bool,
        Iterator  == FixedSizeableIterator<Self> {
  
  // e.g. UInt8, UInt16, UInt32, UInt64 etc
  associatedtype RawValue: FixedWidthInteger & UnsignedInteger
  
  var fileWidth: Int { get }
  var rankWidth: Int { get }
  var rawValue: RawValue { set get }
  
  init(rawValue: RawValue)
//  init(indexes: Index...)
  
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
}

extension Bitboardable {
  
  /// - Parameters:
  ///   - file: <#file description#>
  ///   - rank: <#rank description#>
  public func bitscan(_ point: any Coordinater) -> Bool {
    return self.rawValue & mask(forFile: point.file, forRank: point.rank) > 0
  }
  
  /// <#Description#>
  /// - Parameter point: <#point description#>
  public mutating func bitset(_ point: any Coordinater) {
    self.rawValue |= mask(forFile: point.file, forRank: point.rank)
  }
  
  
  /// <#Description#>
  /// - Parameter point: <#point description#>
  public mutating func bitunset(_ point: any Coordinater) {
    self.rawValue &= ~mask(forFile: point.file, forRank: point.rank)
  }
  
  
  /// <#Description#>
  /// - Parameter move: <#move description#>
  public mutating func bitmove(_ move: any MovePresentable) {
    self.rawValue &= ~mask(forFile: move.from.file, forRank: move.from.rank)
    self.rawValue |= mask(forFile: move.to.file, forRank: move.to.rank)
  }
}


extension Bitboardable {
  
  public mutating func rotate(_ digree: Digree) {
    let isPowerOfTwoAndSquare     = self.isBitWidthPowerOfTwo && self.square
    let supportedDigree: [Digree] = [.dig0, .dig180, .dig360]
    guard isPowerOfTwoAndSquare && supportedDigree.contains(digree) else {
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
