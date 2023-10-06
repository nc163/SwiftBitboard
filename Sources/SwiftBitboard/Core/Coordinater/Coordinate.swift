import Foundation

/// 座標
public struct Coordinate: Coordinater {
  public var file: Int 
  public var rank: Int
  
  public init(file: Int, rank: Int) {
    self.file = file
    self.rank = rank
  }
  
  public static func ==(lhs: Coordinate, rhs: Coordinate) -> Bool {
    return lhs.file == rhs.file && lhs.rank == rhs.rank
  }
}

extension Coordinate {
  
  static var zero: Self {
    return .init(file: .zero, rank: .zero)
  }
  
}
