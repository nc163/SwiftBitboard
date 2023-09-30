import Foundation

public protocol FixedSizeable where Index: Coordinater {
  
  associatedtype Element
  associatedtype Index
  typealias Iterator = FixedSizeableIterator<Self>
  
  subscript(coordinate: any Coordinater) -> Element { get }
  
  var fileWidth: Int { get }
  var rankWidth: Int { get }
  
  // option
  
  /// file rank が 0 始まりかどうか
  var isZeroBasedIndexing: Bool { get }
}


extension FixedSizeable {
  
  // 0始まりか、1始まりかの定義
  var baseIndex: Int { self.isZeroBasedIndexing ? 0 : 1 }
  
  // default
  var isZeroBasedIndexing: Bool { false }
}

public extension FixedSizeable {
  
  
  subscript(file: Int, rank: Int) -> Element {
    self[Index.init(file:file, rank:rank)]
  }
  
  
  var is_square: Bool {
    self.fileWidth == self.rankWidth
  }
  
  /// <#Description#>
  var fileRange: ClosedRange<Int> {
    return baseIndex...(self.fileWidth - (1 - baseIndex))
  }
  
  
  /// <#Description#>
  var rankRange: ClosedRange<Int> {
    return baseIndex...(self.rankWidth - (1 - baseIndex))
  }
  
  func inside(coordinater: any Coordinater) -> Bool {
    return self.fileRange.contains(coordinater.file) && self.rankRange.contains(coordinater.rank)
  }
  
  
  // 2点が垂直の直線上にあるか  
  func arePointsVertical(_ point1: any Coordinater, _ point2: any Coordinater) -> Bool {
    return point1.file == point2.file
  }
  
  
  // 2点が水平の直線上にあるか
  func arePointsHorizontal(_ point1: any Coordinater, _ point2: any Coordinater) -> Bool {
    return point1.rank == point2.rank
  }
  
  
  // 2点が直線上にあるかどうかを判定する
  func arePointsAligned(_ point1: any Coordinater, _ point2: any Coordinater) -> Bool {
    return point1.file == point2.file 
      || point1.rank == point2.rank
      || abs(point1.file - point2.file) == abs(point1.rank - point2.rank)
  }
}

// MARK: Sequence
extension FixedSizeable where Iterator == FixedSizeableIterator<Self> {

  public func makeIterator() -> Iterator {
    .init(self)
  }
}
