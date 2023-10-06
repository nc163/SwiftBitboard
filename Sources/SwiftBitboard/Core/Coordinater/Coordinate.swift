import Foundation

/// 座標
public struct Coordinate: Coordinater {
  
  public var x: Int 
  public var y: Int
  
  public init(x: Int, y: Int) {
    self.x = x
    self.y = y
  }
  
  public static func ==(lhs: Coordinate, rhs: Coordinate) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
  }
  
}

extension Coordinate {
  
  static var zero: Self {
    .init(x: .zero, y: .zero)
  }
  
}
