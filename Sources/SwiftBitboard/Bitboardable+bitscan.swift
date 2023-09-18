import Foundation

extension Bitboard {
  
  /// - Parameter file: <#file description#>
  /// bitscan(file: 3) == true
  ///  ABCDE
  /// 1----*
  /// 2----*
  /// 3----*
  /// 4----*
  public func bitscan(forFile file: Int) -> Bool {
    var any: RawValue = self.rawValue
    do {
      var mask: RawValue = 0
      let f: RawValue = 1 << (file - 1)
      for i in 0..<self.rankWidth {
          mask |= (f << (self.rankWidth * i))
      }
      any = any & mask
    }
    return any > 0
  }

  /// - Parameter rank: <#file description#>
  /// bitscan(rank: 3) == true
  ///  ABCDE
  /// 1----*
  /// 2----*
  /// 3----*
  /// 4----*
  public func bitscan(forRank rank: Int) -> Bool {
    var any: RawValue = self.rawValue
    do {
      let line: RawValue = ~(RawValue.max << self.fileWidth)
      let mask: RawValue = line << ((rank - 1) * (self.fileWidth))
      any = any & mask
    }
    return any > 0
  }

  /// - Parameter rank: <#file description#>
  /// bitscan(file: 4, rank: 3) == true
  ///  ABCDE
  /// 1----*
  /// 2----*
  /// 3----*
  /// 4----*
  public func bitscan(forFile file: Int, forRank rank: Int) -> Bool {
    var any: RawValue = self.rawValue
    do {
      let p: RawValue = (1 << (file - 1))
      let mask: RawValue = p << ((rank - 1) * (self.fileWidth))
      any = any & mask
    }
    return any > 0
  }
}
