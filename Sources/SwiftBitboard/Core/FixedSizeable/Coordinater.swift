import Foundation
 
// 座標(縦, 横)を示すことできる
public protocol Coordinater: Strideable, Equatable, Comparable, Hashable 
  where Stride == Int {
  
  var x: Int { get }
  var y: Int { get }
  
  init(x: Int, y: Int)
  
  static var zero: Self { get }
  
}

extension Coordinater {
  
  /// <#Description#>
  /// - Parameter b: <#b description#>
  /// - Returns: <#description#>
  public mutating func moveToward(_ b: Self) {
    self.x = self.x + b.x
    self.y = self.y + b.y
  }
  
}


// MARK: Comparable
extension Coordinater {
  
  public static func <(lhs: Self, rhs: Self) -> Bool {
    if lhs.x != rhs.x {
      return lhs.x < rhs.x
    }
    
    return lhs.y < rhs.y
  }
  
}

// MARK: Strideable
extension Coordinater {

  public func advanced(by n: Stride) -> Self {
    return Self(x: x + n, y: y + n)
  }
  
  public func distance(to other: Self) -> Stride {
    let dx = other.x - x
    let dy = other.y - y
    return max(dx, dy)
  }
}
