import Foundation

// 移動可能方向を示す
public struct Movable: VectorPresentable {
  
  // 飛び道具
  public let infinity: Bool

  private (set) public var file: Int
  private (set) public var rank: Int
  
  public init(file: Int, rank: Int, _ infinity: Bool = false) {
      self.file = file
      self.rank = rank
      self.infinity = infinity
  }

  public static var up:         Movable { return .init(file: 0, rank: -1) }
  public static var upRight:    Movable { return .init(file: -1, rank: -1) }
  public static var right:      Movable { return .init(file: -1, rank: 0) }
  public static var downRight:  Movable { return .init(file: -1, rank: +1) }
  public static var down:       Movable { return .init(file: 0, rank: +1) }
  public static var downLeft:   Movable { return .init(file: 1, rank: 1) }
  public static var left:       Movable { return .init(file: 1, rank: 0) }
  public static var upLeft:     Movable { return .init(file: 1, rank: -1) }
  
  public struct Infinity {
    public static var up:         Movable { return .init(file: 0,  rank: -1, true) }
    public static var upRight:    Movable { return .init(file: -1, rank: -1, true) }
    public static var right:      Movable { return .init(file: -1, rank: 0,  true) }
    public static var downRight:  Movable { return .init(file: -1, rank: +1, true) }
    public static var down:       Movable { return .init(file: 0,  rank: +1, true) }
    public static var downLeft:   Movable { return .init(file: 1,  rank: 1,  true) }
    public static var left:       Movable { return .init(file: 1,  rank: 0,  true) }
    public static var upLeft:     Movable { return .init(file: 1,  rank: -1, true) }
  }
}
