import Foundation

public protocol Pointable: Equatable, Comparable, Hashable {
  var file: Int { get }
  var rank: Int { get }
  
  init(file: Int, rank: Int)
}

extension Pointable {
  
  public mutating func move_to<Point :Pointable>(file: Int) -> Point {
    .init(file: self.file + file, rank: self.rank)
  }
  
  public mutating func move_to<Point :Pointable>(rank: Int) -> Point {
    .init(file: self.file, rank: self.rank + rank)
  }
  
  public mutating func move_to<Point :Pointable>(point: any Pointable) -> Point {
    .init(file: self.file + point.file, rank: self.rank + point.rank)
  }
  
  public func to_bitboard<Bitboard: Bitboardable>() -> Bitboard {
    return { var bitboard = Bitboard.init(rawValue: .zero); bitboard.bitset(forFile: self.file, forRank: self.rank); return bitboard }()
  }
}

// MARK: Comparable
extension Pointable {
  public static func <(lhs: Self, rhs: Self) -> Bool {
    if lhs.file != rhs.file {
      return lhs.file < rhs.file
    }
      return lhs.rank < rhs.rank
  }
}
