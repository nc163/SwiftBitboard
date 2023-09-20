import Foundation

public struct Point: Pointable {
  public var file: Int 
  public var rank: Int
  
  public mutating func move(file: Int) {
    self.file += file
  }
  
  public mutating func move(rank: Int) {
    self.file += rank
  }
  
  public mutating func move(point: Self) {
    self.file += point.file
    self.rank += point.rank
  }
  
  public static func ==(lhs: Point, rhs: Point) -> Bool {
    return lhs.file == rhs.file && lhs.rank == rhs.rank
  }
}
