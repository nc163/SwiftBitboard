import Foundation

public protocol FixedSizeable where Index: Coordinater {
  
  associatedtype Element
  associatedtype Index
  typealias Iterator = FixedSizeableIterator<Self>
  
  subscript(coordinate: any Coordinater) -> Element { get }
  
  var x_max: Int { get }
  var y_max: Int { get }
  
}

public extension FixedSizeable {
  
  
  subscript(x: Int, y: Int) -> Element {
    self[Index.init(x: x, y: y)]
  }
  
  
  var is_square: Bool {
    self.x_max == self.y_max
  }
  
  /// <#Description#>
  var x_range: ClosedRange<Int> {
    return 0...(self.x_max - 1)
  }
  
  
  /// <#Description#>
  var y_range: ClosedRange<Int> {
    return 0...(self.y_max - 1)
  }
  
  func inside(coordinater: any Coordinater) -> Bool {
    return self.x_range.contains(coordinater.x) && self.y_range.contains(coordinater.y)
  }
  
  
  // 2点が垂直の直線上にあるか  
  func arePointsVertical(_ point1: any Coordinater, _ point2: any Coordinater) -> Bool {
    return point1.x == point2.x
  }
  
  
  // 2点が水平の直線上にあるか
  func arePointsHorizontal(_ point1: any Coordinater, _ point2: any Coordinater) -> Bool {
    return point1.y == point2.y
  }
  
  
  // 2点が直線上にあるかどうかを判定する
  func arePointsAligned(_ point1: any Coordinater, _ point2: any Coordinater) -> Bool {
    return point1.x == point2.x 
      || point1.y == point2.y
      || abs(point1.x - point2.x) == abs(point1.y - point2.y)
  }
}

// MARK: Sequence
extension FixedSizeable where Iterator == FixedSizeableIterator<Self> {

  public func makeIterator() -> Iterator {
    .init(self)
  }
  
}
