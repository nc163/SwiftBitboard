
public struct BitboardDimension: Hashable {
  let fileWidth: Int
  let rankWidth: Int

  public static func ==(lhs: Self, rhs: Self) -> Bool {
    return lhs.fileWidth == rhs.fileWidth && lhs.rankWidth == rhs.rankWidth
  }
}
