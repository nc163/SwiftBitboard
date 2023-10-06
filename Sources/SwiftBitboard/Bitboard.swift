
public struct Bitboard<Configuration: BitboardConfiguration>: Bitboardable {
  
  public typealias RawValue = Configuration.RawValue
  public typealias Index    = Coordinate
  
  public var rawValue: RawValue

  public init(rawValue: RawValue = .zero) {
    self.rawValue  = rawValue
  }
  public init(coordinates: Array<Index>) {
    self.rawValue = .zero
    for i in coordinates {
      self.bitset(for_x: i.x, for_y: i.y)
    }
  }
    
  public func clone(rawValue: RawValue? = nil) -> Self {
    .init(rawValue: rawValue ?? self.rawValue)
  }
}

extension Bitboard {
  
  public static func Inside(point: any Coordinater) -> Bool {
    return Self.x_range.contains(point.x) && Self.y_range.contains(point.y)
  }
  
}

// MARK: Bitboardable
extension Bitboard {
  
  public static prefix func ~ (arg: Self) -> Self {
    return Self(rawValue: ~arg.rawValue)
  }
  
  public static func & (_ lhs: Self,  _ rhs: Self) -> Self {
    return Self(rawValue: lhs.rawValue & rhs.rawValue)
  }
  
  public static func | (_ lhs: Self, _ rhs: Self) -> Self {
    return Self(rawValue: lhs.rawValue | rhs.rawValue)
  }
  
  public static func ^ (_ lhs: Self, _ rhs: Self) -> Self {
    return Self(rawValue: lhs.rawValue ^ rhs.rawValue)
  }
  
  public static func == (_ lhs: Self, _ rhs: Self) -> Bool {
    return lhs.rawValue == rhs.rawValue
  }
  
  public static func &= (lhs: inout Bitboard<Configuration>, rhs: Bitboard<Configuration>) {
    lhs.rawValue &= rhs.rawValue
  }
  
  public static func |= (lhs: inout Bitboard<Configuration>, rhs: Bitboard<Configuration>) {
    lhs.rawValue |= rhs.rawValue
  }
  
  public static func ^= (lhs: inout Bitboard<Configuration>, rhs: Bitboard<Configuration>) {
    lhs.rawValue ^= rhs.rawValue
  }
}



// MARK: Compareble
extension Bitboard: Comparable {
  
  public static func < (lhs: Self, rhs: Self) -> Bool {
    lhs.rawValue < rhs.rawValue
  }
  
}


extension Bitboard: LosslessStringConvertible {
  
  public init?(_ description: String) {
    var index: Int = 0
    var coordinates: Array<Index> = []
    
    let lines = description.split(separator: "\n")
    let _description_ = description.replacingOccurrences(of: "\n", with: "")
    
    guard lines.count == Self.y_max else { return nil }
    guard description.count == (Self.y_max * Self.Configuration.xMax + (Self.x_max - 1)) else { return nil }
    
    for text in _description_ {
      if text == "*" {
        let coordinate = Self.index_to_coordinate(index: index)
        coordinates.append(coordinate)
      }
      index += 1
    }
    self.init(coordinates: coordinates)
  }
}


// MARK: CustomStringConvertible
extension Bitboard: CustomStringConvertible {

  /// <#Description#>
  /// example:
  ///*----
  ///-*---
  ///--*--
  ///---*-
  public var description: String {
    var retval: String = ""
    var index: RawValue = 1
    let current: RawValue = self.rawValue

    // " ABCDE..."
    Self.y_range.forEach { (r: Range<Int>.Element) in
      Self.x_range.forEach { (f: Range<Int>.Element) in
        retval += (current & index) > 0 ? "*" : "-"
        index <<= 1
      }
      if r != Self.y_max { retval += "\n"; }
    }

    return String(retval.dropLast())
  }
}


// MARK: CustomDebugStringConvertible
extension Bitboard: CustomDebugStringConvertible {

  /// <#Description#>
  private var space_padding: String {
    return Self.y_max >= 10 ? "  " : " ";
  }

  /// 桁数を合わせて０埋めで出力する
  /// - Parameter rank: <#rank description#>
  /// - Returns: <#description#>
  @inline(__always)
  private func zeroPadding_fileWidthformat (rank: Int) -> String {
    let format: String = Self.y_max >= 10 ? "%02d" : "%01d";
    return String(format: format, rank)
  }

  /// <#Description#>
  /// example:
  ///  ABCDE       ABCDE
  ///01*----      1*----
  ///02-*---  or  2-*---
  ///03--*--      3--*--
  ///04---*-      4---*-
  public var debugDescription: String {
    var retval: String = ""
    var index: RawValue = 1
    let current: RawValue = self.rawValue

    // " ABCDE..."
    retval += space_padding;
    Self.x_range.forEach { retval += String(UnicodeScalar(64 + $0)!) };  retval += "\n";
    Self.y_range.forEach { (r) in
      retval += zeroPadding_fileWidthformat(rank: r)
      Self.x_range.forEach { (f) in
        retval += (current & index) > 0 ? "*" : "-"
        index <<= 1
      }
      if r != Self.y_max { retval += "\n"; }
    }

    return String(retval.dropLast())
  }
}
