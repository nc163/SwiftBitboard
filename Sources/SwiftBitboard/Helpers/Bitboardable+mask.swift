import Foundation

extension Bitboardable {
  
  static func index_to_coordinate(index: Int) -> Coordinate {
    let file = (index % Self.fileWidth) + (Self.BasedIndex)
    let rank = (index / Self.fileWidth) + (Self.BasedIndex)
    return .init(file: file, rank: rank)
  }

  static func mask(_ file: Int, _ rank: Int) -> RawValue {
    let f = (file - BasedIndex)
    let r = (rank - BasedIndex)
    return RawValue(1) << (f + (r * Self.fileWidth))
  }
  
  static func mask(_ coordinate: any Coordinater) -> RawValue {
    self.mask(coordinate.file, coordinate.rank)
  }
}
