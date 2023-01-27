
public struct Bitboard<T: Bitboardable.RawValueType>: ImmutableBitboard, MutableBitboard {
  
  public var rawValue: T
  public var fileWidth: Int
  public var rankWidth: Int

  public init(rawValue: RawValue, fileWidth: Int, rankWidth: Int) {
    self.rawValue = rawValue
    self.fileWidth = fileWidth
    self.rankWidth = rankWidth
  }

  public func clone() -> Self {
      .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
  }
}
