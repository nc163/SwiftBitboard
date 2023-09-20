import Foundation

public struct Point: Pointable {
  public var file: Int 
  public var rank: Int
  
  public init(file: Int, rank: Int) {
    self.file = file
    self.rank = rank
  }
  
  public static func ==(lhs: Point, rhs: Point) -> Bool {
    return lhs.file == rhs.file && lhs.rank == rhs.rank
  }
}
