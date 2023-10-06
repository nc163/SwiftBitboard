import Foundation

// 移動可能方向を示す
public struct Movable: VectorPresentable {
  
  // 飛び道具
  public let infinity: Bool

  private (set) public var x: Int
  private (set) public var y: Int
  
  public init(x: Int, y: Int, _ infinity: Bool = false) {
      self.x = x
      self.y = y
      self.infinity = infinity
  }

  public static var up:         Movable { return .init(x: 0,  y: -1) }
  public static var upRight:    Movable { return .init(x: -1, y: -1) }
  public static var right:      Movable { return .init(x: -1, y: 0) }
  public static var downRight:  Movable { return .init(x: -1, y: +1) }
  public static var down:       Movable { return .init(x: 0,  y: +1) }
  public static var downLeft:   Movable { return .init(x: 1,  y: 1) }
  public static var left:       Movable { return .init(x: 1,  y: 0) }
  public static var upLeft:     Movable { return .init(x: 1,  y: -1) }
  
  public struct Infinity {
    public static var up:         Movable { return .init(x: 0,  y: -1, true) }
    public static var upRight:    Movable { return .init(x: -1, y: -1, true) }
    public static var right:      Movable { return .init(x: -1, y: 0,  true) }
    public static var downRight:  Movable { return .init(x: -1, y: +1, true) }
    public static var down:       Movable { return .init(x: 0,  y: +1, true) }
    public static var downLeft:   Movable { return .init(x: 1,  y: 1,  true) }
    public static var left:       Movable { return .init(x: 1,  y: 0,  true) }
    public static var upLeft:     Movable { return .init(x: 1,  y: -1, true) }
  }
}
