import Foundation
 
// 座標(縦, 横)を示すことできる
public protocol Coordinater: Equatable, Comparable, Hashable {
  
  var x: Int { get }
  var y: Int { get }
  
  init(x: Int, y: Int)
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
