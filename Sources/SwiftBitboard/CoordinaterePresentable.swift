import Foundation

public protocol CoordinaterePresentable: Equatable, Comparable, Hashable {
  var file: Int { get }
  var rank: Int { get }
  
  init(file: Int, rank: Int)
}

extension CoordinaterePresentable {
  
  public mutating func move_to(file: Int) -> Self {
    .init(file: self.file + file, rank: self.rank)
  }
  
  public mutating func move_to(rank: Int) -> Self {
    .init(file: self.file, rank: self.rank + rank)
  }
  
  public mutating func move_to(file: Int, rank: Int) -> Self {
    .init(file: self.file + file, rank: self.rank + rank)
  }
  
  public mutating func move_to(point: any CoordinaterePresentable) -> Self {
    .init(file: self.file + point.file, rank: self.rank + point.rank)
  }
  
  public func to_bitboard<Bitboard: Bitboardable>() -> Bitboard {
    return { var bitboard = Bitboard.init(rawValue: .zero); bitboard.bitset(forFile: self.file, forRank: self.rank); return bitboard }()
  }
}

// MARK: Comparable
extension CoordinaterePresentable {
  public static func <(lhs: Self, rhs: Self) -> Bool {
    if lhs.file != rhs.file {
      return lhs.file < rhs.file
    }
      return lhs.rank < rhs.rank
  }
}
