import Foundation

public struct Point: Pointable {
  public let file: Int 
  public let rank: Int
  
  public static func ==(lhs: Point, rhs: Point) -> Bool {
    return lhs.file == rhs.file && lhs.rank == rhs.rank
  }

  public static func <(lhs: Point, rhs: Point) -> Bool {
    if lhs.file != rhs.file {
      return lhs.file < rhs.file
    }
      return lhs.rank < rhs.rank
    }
}
