import Foundation

public protocol Bitboardable: FixedSizeable, Comparable, Hashable, Equatable 
  where Index     == Coordinate,
        Element   == Bool {
  
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
}


extension Bitboardable {
  
  ///  0始まりか、1始まりか
  @inline(__always)
  static var BasedIndex: Int { Configuration.isZeroBasedIndexing ? 0 : 1 }

  @inline(__always)
  var BasedIndex: Int { Self.BasedIndex }
  
}


extension Bitboardable {
  
  ///
  public static var fileWidth: Int {
    return Configuration.fileWidth
  }
  
  ///
  public static var rankWidth: Int {
    return Configuration.rankWidth
  }

  /// <#Description#>
  public static var fileRange: ClosedRange<Int> {
    return BasedIndex...(Self.fileWidth - (1 - BasedIndex))
  }
  
  /// <#Description#>
  public static var rankRange: ClosedRange<Int> {
    return BasedIndex...(Self.rankWidth - (1 - BasedIndex))
  }
  
  public static var is_square: Bool {
    Self.fileWidth == Self.rankWidth
  }
}


// MARK: FixedSizeable
extension Bitboardable {
  
  public subscript(coordinate: any Coordinater) -> Bool { 
    self.bittest(forFile: coordinate.file, forRank: coordinate.rank)
  }

  ///
  public var isZeroBasedIndexing: Bool { 
    Configuration.isZeroBasedIndexing 
  }
  
  ///
  public var fileWidth: Int {
    return Self.fileWidth
  }
  
  ///
  public var rankWidth: Int {
    return Self.rankWidth
  }
}


extension Bitboardable {

  /// - Parameters:
  ///   - file: <#file description#>
  ///   - rank: <#rank description#>
  public func bitscan() -> [Coordinate] {
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
  public func bittest(forFile file: Int, forRank rank: Int) -> Bool {
    IF_ASSERT_OUT_OF_BOUNDS(file, rank)

    return (self.rawValue & Self.mask(file, rank)) > 0
  }
  
  /// - Parameters:
  ///   - file: <#file description#>
  ///   - rank: <#rank description#>
  public mutating func bitset(forFile file: Int, forRank rank: Int) {
    IF_ASSERT_OUT_OF_BOUNDS(file, rank)

    self.rawValue |= Self.mask(file, rank)
  }
  
  /// - Parameters:
  ///   - file: <#file description#>
  ///   - rank: <#rank description#>
  public mutating func bitunset(forFile file: Int, forRank rank: Int) {
    IF_ASSERT_OUT_OF_BOUNDS(file, rank)
    
    self.rawValue &= ~Self.mask(file, rank)
  }
}


extension Bitboardable {
  
  /// - Parameters:
  ///   - file: <#file description#>
  ///   - rank: <#rank description#>
  public func bittest(_ coordinate: any Coordinater) -> Bool {
    IF_ASSERT_OUT_OF_BOUNDS(coordinate)
    
    return (self.rawValue & Self.mask(coordinate)) > 0
  }
  
  /// <#Description#>
  /// - Parameter point: <#point description#>
  public mutating func bitset(_ coordinate: any Coordinater) {
    IF_ASSERT_OUT_OF_BOUNDS(coordinate)
    
    self.rawValue |= Self.mask(coordinate)
  }
  
  
  /// <#Description#>
  /// - Parameter point: <#point description#>
  public mutating func bitunset(_ coordinate: any Coordinater) {
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
