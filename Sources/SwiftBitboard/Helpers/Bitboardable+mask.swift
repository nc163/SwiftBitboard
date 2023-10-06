import Foundation

extension Bitboardable {
  
  static func index_to_coordinate(index: Int) -> Coordinate {
    return .init(x: index % Self.x_max, y: index / Self.x_max)
  }

  static func mask(_ x: Int, _ y: Int) -> RawValue {
    return RawValue(1) << (x + (y * Self.x_max))
  }
  
  static func mask(_ coordinate: any Coordinater) -> RawValue {
    self.mask(coordinate.x, coordinate.y)
  }
}
