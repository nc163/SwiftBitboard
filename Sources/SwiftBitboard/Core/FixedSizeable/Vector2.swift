import Foundation

public protocol Vector2: Hashable {
  
  var vec_x: Int { get }
  var vec_y: Int { get }
  
}


public struct Move: Vector2 {
  
  public var vec_x: Int
  public var vec_y: Int
  
}
