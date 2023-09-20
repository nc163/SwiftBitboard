import Foundation

public protocol FixedSizeable: Collection where Index == Point {
  
  associatedtype Element
  
  subscript(file: Int, rank: Int) -> Element { get }
  
  var fileWidth: Int { get }
  var rankWidth: Int { get }
}

public extension FixedSizeable {
  
  var fileRange: ClosedRange<Int> {
    return 1...self.fileWidth
  }

  var rankRange: ClosedRange<Int> {
    return 1...self.rankWidth
  }
  
  var square: Bool {
    self.fileWidth == self.rankWidth
  }
  
  func inside(point: any Pointable) -> Bool {
    return self.fileRange.contains(point.file) && self.rankRange.contains(point.rank)
  }
  
  // 2点が垂直の直線上にあるか  
  func arePointsVertical(_ point1: Point, _ point2: Point) -> Bool {
    return point1.file == point2.file
  }
  
  // 2点が水平の直線上にあるか
  func arePointsHorizontal(_ point1: Point, _ point2: Point) -> Bool {
    return point1.rank == point2.rank
  }
  
  // 2点が直線上にあるかどうかを判定する
  func arePointsAligned(_ point1: Point, _ point2: Point) -> Bool {
    return point1.file == point2.file 
      || point1.rank == point2.rank
      || abs(point1.file - point2.file) == abs(point1.rank - point2.rank)
  }
}

// MARK: Collection
extension FixedSizeable {
  
  public var startIndex: Point { .init(file: 0, rank: 0) }
  public var endIndex: Point { .init(file: self.fileWidth, rank: self.rankWidth) }
  
  public subscript(position: Point) -> Element {
    return self[position.file, position.rank]
  }
  
  public func index(after i: Point) -> Index {
    if i.rank < rankWidth - 1 {
      return .init(file: i.file, rank: i.rank + 1)
    } else if i.file < fileWidth - 1 {
      return .init(file: i.file + 1, rank: 0)
    } else {
      return endIndex
    }
  }
}
