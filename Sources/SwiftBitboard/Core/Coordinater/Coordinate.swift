import Foundation

/// 座標
public struct Coordinate: Coordinater {
  public var file: Int 
  public var rank: Int
  
  public init(file: Int = 0, rank: Int = 0) {
    self.file = file
    self.rank = rank
  }
  
  public static func ==(lhs: Coordinate, rhs: Coordinate) -> Bool {
    return lhs.file == rhs.file && lhs.rank == rhs.rank
  }
}
