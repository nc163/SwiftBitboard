import Foundation

extension Bitboardable {
  
  @inline(__always)
  func IF_ASSERT_OUT_OF_BOUNDS(_ file: Int, _ rank: Int) {
    assert(Self.fileRange.contains(file) && Self.rankRange.contains(rank), "Error: Attempted to access file: \(file), rank: \(rank), but valid range is file: \(Self.fileRange.min()!)...\(Self.fileRange.max()!) and rank: \(Self.rankRange.min()!)...\(Self.rankRange.max()!).")
  }
  
  @inline(__always)
  func IF_ASSERT_OUT_OF_BOUNDS(_ coordinate: any Coordinater) {
    IF_ASSERT_OUT_OF_BOUNDS(coordinate.file, coordinate.rank)
  }
  
}
