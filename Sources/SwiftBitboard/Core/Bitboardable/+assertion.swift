import Foundation

extension Bitboardable {
  
  @inline(__always)
  func IF_ASSERT_OUT_OF_BOUNDS(_ x: Int, _ y: Int) {
    assert(Self.x_range.contains(x) && Self.y_range.contains(y), "Error: Attempted to access x: \(x), y: \(y), but valid range is file: \(Self.x_range.min()!)...\(Self.x_range.max()!) and x: \(Self.x_range.min()!)...\(Self.y_range.max()!).")
  }
  
  @inline(__always)
  func IF_ASSERT_OUT_OF_BOUNDS(_ coordinate: any Coordinater) {
    IF_ASSERT_OUT_OF_BOUNDS(coordinate.x, coordinate.y)
  }
  
}
