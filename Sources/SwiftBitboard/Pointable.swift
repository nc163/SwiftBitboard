import Foundation

public protocol Pointable: Equatable, Comparable, Hashable {
  var file: Int { get }
  var rank: Int { get }
}

extension Pointable {
  
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
