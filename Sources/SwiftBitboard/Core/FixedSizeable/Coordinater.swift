import Foundation
 
// 座標(縦, 横)を示すことできる
public protocol Coordinater: Strideable, Equatable, Comparable, Hashable 
  where Stride == Int {
  
  var x: Int { get }
  var y: Int { get }
  
  init(x: Int, y: Int)
  
  static var zero: Self { get }
  
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
  // `advanced(by:)` での進行は、xとyの両方で等しく進行させるものとします。
  // もちろん、異なる方法で進行させることも可能です。
  public func advanced(by n: Stride) -> Self {
    return Self(x: x + n, y: y + n)
  }
  
  // 2つの座標間の「距離」は、xとyの差の最大値として定義します。
  public func distance(to other: Self) -> Stride {
    let dx = other.x - x
    let dy = other.y - y
    return max(dx, dy)
  }
}
