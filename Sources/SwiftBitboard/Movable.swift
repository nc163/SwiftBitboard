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
//
//// MARK: public extension Move
//extension Move {
//
//  public func to_bitboard<BB: Bitboardable>(offset: any CoordinaterePresentable) -> BB {
//    var retval: BB = .init(rawValue: .zero)
//
//    var current = offset
//
//    // 飛び道具のききの計算
//    if self.infinity {
//      while true {
//
//        var moved = current.move_to(point: self)
//
//        // 壁にぶつかるまで
//        guard retval.inside(point: moved) else {
//          break
//        }
//
//        retval.bitset(forFile: moved.file, forRank: moved.rank)
//      }
//    } else {
//
//      var moved = current.move_to(point: self)
//
//      // 壁にぶつかるなら移動しない
//      if retval.inside(point: moved) {
//        retval.bitset(forFile: moved.file, forRank: moved.rank)
//      }
//    }
//    return retval
//  }
//}
