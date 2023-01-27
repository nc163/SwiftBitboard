
public struct Bitboard<T: FixedWidthInteger & UnsignedInteger>: ImmutableBitboard, MutableBitboard {
  public typealias RawValue = T

  public var rawValue: RawValue
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
