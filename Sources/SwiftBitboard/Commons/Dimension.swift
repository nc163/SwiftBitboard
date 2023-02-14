
public struct Dimension: Hashable, Comparable, Equatable {
  
  var fileWidth: Int
  var rankWidth: Int

  public static func == (lhs: Self, rhs: Self) -> Bool {
    return (lhs.fileWidth == rhs.fileWidth && lhs.rankWidth == rhs.rankWidth) || (lhs.fileWidth == rhs.rankWidth && lhs.rankWidth == rhs.fileWidth)
  }
  
  public static func < (lhs: Dimension, rhs: Dimension) -> Bool {
    return lhs == rhs 
    ? false
    : lhs.fileWidth == rhs.fileWidth
      ? lhs.rankWidth < rhs.rankWidth
      : lhs.fileWidth < rhs.fileWidth
  }
}
