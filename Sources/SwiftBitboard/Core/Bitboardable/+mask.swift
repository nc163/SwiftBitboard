import Foundation

extension Bitboardable {
  
  static func index_to_coordinate<C: Coordinater>(index: Int) -> C {
    return .init(x: index % Self.x_max, y: index / Self.x_max)
  }
  
  static func mask(_ x: Int, _ y: Int) -> RawValue {
    return RawValue(1) << (x + (y * Self.x_max))
  }
  
  static func mask(_ coordinate: any Coordinater) -> RawValue {
    self.mask(coordinate.x, coordinate.y)
  }
  
  // 2つの位置の間のマスクを生成
  static func maskBetween<C: Coordinater>(_ a: C, _ b: C) -> RawValue {
    guard a > b else { return maskBetween(b, a) }
    
    let startIndex = a
    let endIndex = b
    
    var mask: RawValue = 0
    for i in startIndex...endIndex {
      mask |= Self.mask(i.x, i.y)
    }
    
    return mask
  }
}
