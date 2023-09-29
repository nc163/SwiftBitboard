import Foundation
 
// 座標(縦, 横)を示すことできる
public protocol Coordinater: Equatable, Comparable, Hashable {
  var file: Int { get }
  var rank: Int { get }
  
  init(file: Int, rank: Int)
}


// MARK: Comparable
extension Coordinater {
  public static func <(lhs: Self, rhs: Self) -> Bool {
    if lhs.file != rhs.file {
      return lhs.file < rhs.file
    }
    
    return lhs.rank < rhs.rank
  }
}
