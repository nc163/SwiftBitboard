import Foundation

public protocol FixedSizeable: Collection where Index: CoordinaterePresentable {
  
  associatedtype Element
  associatedtype Index
  
  subscript(file: Int, rank: Int) -> Element { get }
  
  var fileWidth: Int { get }
  var rankWidth: Int { get }
  
  mutating func set_index(_ index: Index)
  mutating func unset_index(_ index: Index)
  mutating func mapping_indexes(_ indexes: Index...)
}

public extension FixedSizeable {
  
  /// 列（横）の数
  var fileRange: ClosedRange<Int> {
    return 0...(self.fileWidth - 1)
  }

  /// 行（縦）の数
  var rankRange: ClosedRange<Int> {
    return 0...(self.rankWidth - 1)
  }
  
  var square: Bool {
    self.fileWidth == self.rankWidth
  }
  
  func contains(point: any CoordinaterePresentable) -> Bool {
    return self.fileRange.contains(point.file) && self.rankRange.contains(point.rank)
  }
  
  /// 全ての座標を返す
  func to_indexes() -> [Index] {
      var indexes: [Index] = []
      var currentIndex = startIndex
      
      while currentIndex < endIndex {
          indexes.append(currentIndex)
          currentIndex = index(after: currentIndex)
      }
      
      return indexes
  }
  
  // 2点が垂直の直線上にあるか  
  func arePointsVertical(_ point1: any CoordinaterePresentable, _ point2: any CoordinaterePresentable) -> Bool {
    return point1.file == point2.file
  }
  
  // 2点が水平の直線上にあるか
  func arePointsHorizontal(_ point1: any CoordinaterePresentable, _ point2: any CoordinaterePresentable) -> Bool {
    return point1.rank == point2.rank
  }
  
  // 2点が直線上にあるかどうかを判定する
  func arePointsAligned(_ point1: any CoordinaterePresentable, _ point2: any CoordinaterePresentable) -> Bool {
    return point1.file == point2.file 
      || point1.rank == point2.rank
      || abs(point1.file - point2.file) == abs(point1.rank - point2.rank)
  }
}


// MARK: Collection
extension FixedSizeable {
  
  public var startIndex: Index { .init(file: 0, rank: 0) }
  public var endIndex: Index { .init(file: self.fileWidth, rank: self.rankWidth) }
  
  public subscript(position: Index) -> Element {
    return self[position.file, position.rank]
  }
  
  public func index(after i: Index) -> Index {
    if i.rank < rankWidth - 1 {
      return .init(file: i.file, rank: i.rank + 1)
    } else if i.file < fileWidth - 1 {
      return .init(file: i.file + 1, rank: 0)
    } else {
      return endIndex
    }
  }
}
