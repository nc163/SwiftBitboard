
public struct Bitboard<Configuration: BitboardConfiguration>: Bitboardable {
  
  public typealias RawValue = Configuration.RawValue
  public typealias Index    = Point
  
  public var rawValue: RawValue
  public var fileWidth: Int { Configuration.fileWidth }
  public var rankWidth: Int { Configuration.rankWidth }

  public init(rawValue: RawValue = .zero) {
    self.rawValue  = rawValue
  }
  public init(indexes: Index...) {
    self.rawValue = .zero
    for i in indexes {
      self.set_index(i)
    }
  }
    
  public func clone(rawValue: RawValue? = nil) -> Self {
    .init(rawValue: rawValue ?? self.rawValue)
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
    return lhs.rawValue == rhs.rawValue && lhs.fileWidth == rhs.fileWidth && lhs.rankWidth == rhs.rankWidth
  }
}


// MARK: FixedSizeable
extension Bitboard: FixedSizeable {
  
  public mutating func set_index(_ index: Index) {
    self.bitset(forFile: index.file, forRank: index.rank)
  }
  
  public mutating func unset_index(_ index: Index) {
    self.bitunset(forFile: index.file, forRank: index.rank)
  }
  
  public mutating func mapping_indexes(_ indexes: Index...) {
    for index in indexes {
      self.bitset(forFile: index.file, forRank: index.rank)
    }
  }
  
  
  public static var FileRange: ClosedRange<Int> {
    return 0...Configuration.fileWidth
  }

  public static var RankRange: ClosedRange<Int> {
    return 0...Configuration.rankWidth
  }
  
  public static var Square: Bool {
    Configuration.fileWidth == Configuration.rankWidth
  }
  
  public static func Inside(point: any CoordinaterePresentable) -> Bool {
    return Self.FileRange.contains(point.file) && Self.RankRange.contains(point.rank)
  }
}


// MARK: Collection
extension Bitboard: Collection {
  
  public subscript(file: Int, rank: Int) -> Bool {
    self.bitscan(forFile: file, forRank: rank)
  }

  public subscript(range: Range<Point>) -> Slice<Bitboard<Configuration>> {
    return .init(base: self, bounds: range)
  }
}


// MARK: Compareble
extension Bitboard: Comparable {
  
  public static func < (lhs: Self, rhs: Self) -> Bool {
    lhs.rawValue < rhs.rawValue
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
    let fileRange: (Range<Int>) = (1..<(self.fileWidth + 1))
    let rankRange: (Range<Int>) = (1..<(self.rankWidth + 1))

    // " ABCDE..."
    rankRange.forEach { (r: Range<Int>.Element) in
      fileRange.forEach { (f: Range<Int>.Element) in
        retval += (current & index) > 0 ? "*" : "-"
        index <<= 1
      }
      if r != self.rankWidth { retval += "\n"; }
    }

    return retval
  }
}


// MARK: CustomDebugStringConvertible
extension Bitboard: CustomDebugStringConvertible {

  /// <#Description#>
  private var space_padding: String {
    return self.rankWidth >= 10 ? "  " : " ";
  }

  /// 桁数を合わせて０埋めで出力する
  /// - Parameter rank: <#rank description#>
  /// - Returns: <#description#>
  @inline(__always)
  private func zeroPadding_fileWidthformat (rank: Int) -> String {
    let format: String = self.rankWidth >= 10 ? "%02d" : "%01d";
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
    let fileRange = (1..<(self.fileWidth + 1))
    let rankRange = (1..<(self.rankWidth + 1))

    // " ABCDE..."
    retval += space_padding;
    fileRange.forEach { retval += String(UnicodeScalar(64 + $0)!) };  retval += "\n";
    rankRange.forEach { (r) in
      retval += zeroPadding_fileWidthformat(rank: r)
      fileRange.forEach { (f) in
        retval += (current & index) > 0 ? "*" : "-"
        index <<= 1
      }
      if r != self.rankWidth { retval += "\n"; }
    }

    return retval
  }
}
