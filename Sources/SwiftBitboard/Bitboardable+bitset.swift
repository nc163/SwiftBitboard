import Foundation

extension Bitboard {
  
  ///
  /// - Parameter file: <#file description#>
  /// bitset(file: 5)
  ///  ABCDE
  /// 1----*
  /// 2----*
  /// 3----*
  /// 4----*
  public mutating func bitset(forFile file: Int) -> Bool {
    do {
      var mask: RawValue = 0
      let _mask_: RawValue = 1 << (file - 1)
      for i: Int in 0..<self.rankWidth {
        mask |= (_mask_ << (self.rankWidth * i))
      }
    }
    return true
  }

  ///
  /// - Parameter rank: <#rank description#>
  /// bitset(rank: 3)
  ///  ABCDE
  /// 1-----
  /// 2-----
  /// 3*****
  /// 4-----
  public mutating func bitset(forRank rank: Int) -> Bool {
    do {
      let line: RawValue = ~(RawValue.max << self.fileWidth)
      let mask = line << ((rank - 1) * (self.fileWidth))
      self.rawValue &= mask
    }
    return true
  }

  ///
  /// - Parameters:
  ///   - file: <#file description#>
  ///   - rank: <#rank description#>
  /// bitset(file: 1, rank: 3)
  ///  ABCDE
  /// 1-----
  /// 2-----
  /// 3*----
  /// 4-----
  public mutating func bitset(forFile file: Int, forRank rank: Int) -> Bool {
    do {
      let bit: RawValue = 1
      let mask = bit << ((file - 1) + ((rank - 1) * (self.fileWidth)))
      self.rawValue |= mask
    }
    return true
  }
}
