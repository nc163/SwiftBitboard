import Foundation
 
// 座標(縦, 横)を示すことできる
public protocol CoordinaterePresentable: Equatable, Comparable, Hashable {
  var file: Int { get }
  var rank: Int { get }
  
  init(file: Int, rank: Int)
}

extension CoordinaterePresentable {
 
  public mutating func move_to(point: any VectorPresentable) -> Self {
    .init(file: self.file + point.file, rank: self.rank + point.rank)
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
