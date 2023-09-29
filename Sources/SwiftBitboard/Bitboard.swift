
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
      self.bitset(forFile: i.file, forRank: i.rank)
    }
  }
    
  public func clone(rawValue: RawValue? = nil) -> Self {
    .init(rawValue: rawValue ?? self.rawValue)
  }
}

extension Bitboard {
  
  public static func Inside(point: any Coordinater) -> Bool {
    return Self.fileRange.contains(point.file) && Self.rankRange.contains(point.rank)
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
}

// MARK: FixedSizeable
extension Bitboard: FixedSizeable {
  
  public func makeIterator() -> Iterator {
    .init(self)
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
    
    guard lines.count == Self.rankWidth else { return nil }
    guard description.count == (Self.rankWidth * Self.Configuration.fileWidth + (Self.fileWidth - 1)) else { return nil }
    
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
    Self.rankRange.forEach { (r: Range<Int>.Element) in
      Self.fileRange.forEach { (f: Range<Int>.Element) in
        retval += (current & index) > 0 ? "*" : "-"
        index <<= 1
      }
      if r != Self.rankWidth { retval += "\n"; }
    }

    return retval
  }
}


// MARK: CustomDebugStringConvertible
extension Bitboard: CustomDebugStringConvertible {

  /// <#Description#>
  private var space_padding: String {
    return Self.rankWidth >= 10 ? "  " : " ";
  }

  /// 桁数を合わせて０埋めで出力する
  /// - Parameter rank: <#rank description#>
  /// - Returns: <#description#>
  @inline(__always)
  private func zeroPadding_fileWidthformat (rank: Int) -> String {
    let format: String = Self.rankWidth >= 10 ? "%02d" : "%01d";
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
    Self.fileRange.forEach { retval += String(UnicodeScalar(64 + $0)!) };  retval += "\n";
    Self.rankRange.forEach { (r) in
      retval += zeroPadding_fileWidthformat(rank: r)
      Self.fileRange.forEach { (f) in
        retval += (current & index) > 0 ? "*" : "-"
        index <<= 1
      }
      if r != Self.rankWidth { retval += "\n"; }
    }

    return retval
  }
}
