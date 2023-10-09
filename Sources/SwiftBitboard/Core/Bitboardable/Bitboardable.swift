import Foundation

public protocol Bitboardable: FixedSizeable, Comparable, Hashable, Equatable 
  where Index   == Coordinate,
        Element == Bool {
  
  associatedtype Configuration: BitboardConfiguration
  
  // e.g. UInt8, UInt16, UInt32, UInt64 etc
  typealias RawValue = Configuration.RawValue
  
  var rawValue: RawValue { set get }
  
  init(rawValue: RawValue)
  
  func clone(rawValue: RawValue?) -> Self
  
  static prefix func ~ (arg: Self) -> Self
  static func & (_ lhs: Self,  _ rhs: Self) -> Self
  static func | (_ lhs: Self, _ rhs: Self) -> Self
  static func ^ (_ lhs: Self, _ rhs: Self) -> Self
  static func == (_ lhs: Self,  _ rhs: Self) -> Bool
  
  static func &= (_ lhs: inout Self, _ rhs: Self)
  static func |= (_ lhs: inout Self, _ rhs: Self)
  static func ^= (_ lhs: inout Self, _ rhs: Self)
}


extension Bitboardable {
  
  public static var zero: Self { .init(rawValue: .zero) }
  
  ///
  public static var x_max: Int {
    return Configuration.xMax
  }
  
  ///
  public static var y_max: Int {
    return Configuration.yMax
  }

  /// <#Description#>
  public static var x_range: ClosedRange<Int> {
    return 0...(Self.x_max - 1)
  }
  
  /// <#Description#>
  public static var y_range: ClosedRange<Int> {
    return 0...(Self.y_max - 1)
  }
  
  public static var is_square: Bool {
    Self.x_max == Self.y_max
  }
}


// MARK: FixedSizeable
extension Bitboardable {
  
  public subscript(coordinate: Index) -> Bool { 
    self.bittest(for_x: coordinate.x, for_y: coordinate.y)
  }
  
  ///
  public var x_max: Int {
    return Self.x_max
  }
  
  ///
  public var y_max: Int {
    return Self.y_max
  }
}


extension Bitboardable {

  /// - Parameters:
  ///   - file: <#file description#>
  ///   - rank: <#rank description#>
  public func bitscan() -> [Index] {
    var word = self.rawValue
    var result: Array<Coordinate> = []
    
    while (word != .zero) {
      let index = word.trailingZeroBitCount
      let coordinate = Self.index_to_coordinate(index: index)
      result.append(coordinate)
      
      word = word & (word - 1);
    }
    return result
  }

  /// - Parameters:
  ///   - file: <#file description#>
  ///   - rank: <#rank description#>
  public func bittest(for_x x: Int, for_y y: Int) -> Bool {
    IF_ASSERT_OUT_OF_BOUNDS(x, y)

    return (self.rawValue & Self.mask(x, y)) > 0
  }
  
  /// - Parameters:
  ///   - file: <#file description#>
  ///   - rank: <#rank description#>
  public mutating func bitset(for_x x: Int, for_y y: Int) {
    IF_ASSERT_OUT_OF_BOUNDS(x, y)

    self.rawValue |= Self.mask(x, y)
  }
  
  /// - Parameters:
  ///   - file: <#file description#>
  ///   - rank: <#rank description#>
  public mutating func bitunset(for_x x: Int, for_y y: Int) {
    IF_ASSERT_OUT_OF_BOUNDS(x, y)
    
    self.rawValue &= ~Self.mask(x, y)
  }
  
  /// - Parameters:
  ///   - file: <#file description#>
  ///   - rank: <#rank description#>
  public func bittest(_ coordinate: Index) -> Bool {
    IF_ASSERT_OUT_OF_BOUNDS(coordinate)
    
    return (self.rawValue & Self.mask(coordinate)) > 0
  }
  
  /// <#Description#>
  /// - Parameter point: <#point description#>
  public mutating func bitset(_ coordinate: Index) {
    IF_ASSERT_OUT_OF_BOUNDS(coordinate)
    
    self.rawValue |= Self.mask(coordinate)
  }
  
  
  /// <#Description#>
  /// - Parameter point: <#point description#>
  public mutating func bitunset(_ coordinate: Index) {
    IF_ASSERT_OUT_OF_BOUNDS(coordinate)
    
    self.rawValue &= ~Self.mask(coordinate)
  }

}


extension Bitboardable {

//  /// <#Description#>
//  /// - Parameter move: <#move description#>
//  public mutating func bitmove(_ move: any MovePresentable) {
//    self.rawValue &= ~mask(forFile: move.from.file, forRank: move.from.rank)
//    self.rawValue |= mask(forFile: move.to.file, forRank: move.to.rank)
//  }
  
  public mutating func rotate(_ digree: Digree) {
    let isPowerOfTwoAndSquare     = self.isBitWidthPowerOfTwo && self.is_square
    let supportedDigree: [Digree] = [.dig0, .dig180, .dig360]
    guard isPowerOfTwoAndSquare && supportedDigree.contains(digree) else {
        return
    }

    let rotate_count = digree.rawValue / 180

    var next: Self.RawValue = self.rawValue
    for _ in 0..<rotate_count {
        next = rotate180(fileWidth: self.x_max, rankWidth: self.y_max, rawValue: next)

        /// bitboardはSelf.RawValueの一部しか使っていないが、getBitRotate90ではSelf.RawValue全体を回転させている
        /// ので回転させた後で値の先頭をbitboardの先頭になるように辻褄を合わせる必要がある。
        let shift: Int = Self.RawValue.bitWidth - (self.y_max * (self.x_max - 1) + self.x_max)
        next = Self.RawValue(next) >> shift
    }
    self.rawValue = next
  }
  
  public mutating func mirror(_ mirror: Mirror) {
    return
  }
}

// MARK: internal
extension Bitboardable {
  
  /// RawValue.bitwidth が 2^n かどうか
  var isBitWidthPowerOfTwo: Bool {
    RawValue.bitWidth.nonzeroBitCount == 1
  }
  
}
