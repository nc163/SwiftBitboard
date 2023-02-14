
public extension Bitboardable {

  ///
  func bitscan() -> Bool {
    return self.rawValue > 0
  }

  ///
  func bitscan(file: Int) -> Bool {
    var any: Self.RawValue = self.rawValue
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

  ///
  func bitscan(rank: Int) -> Bool {
    var any: Self.RawValue = self.rawValue
    do {
      let line: RawValue = ~(RawValue.max << self.fileWidth)
      let mask: Self.RawValue = line << ((rank - 1) * (self.fileWidth))
      any = any & mask
    }
    return any > 0
  }

  ///
  func bitscan(file: Int, rank: Int) -> Bool {
    var any: Self.RawValue = self.rawValue
    do {
      let p: RawValue = (1 << (file - 1))
      let mask: Self.RawValue = p << ((rank - 1) * (self.fileWidth))
      any = any & mask
    }
    return any > 0
  }
}
