
public struct BitBoardLine<Owner: ImmutableBitboard>: ImmutableBitboard {

  public typealias Point = BitBoardPoint<Owner>
  public typealias RawValue = Owner.RawValue

  public var fileWidth: Int { owner.fileWidth }
  public var rankWidth: Int { owner.rankWidth }
  public var rawValue: Owner.RawValue { owner.rawValue }

  public let a: Point
  public let b: Point
  let owner: Owner

  internal init(a: Point, b: Point, owner: Owner) {
      self.a = a
      self.b = b
      self.owner = owner
  }

  public func clone() -> BitBoardLine<Owner> {
      .init(a: a, b: b, owner: owner)
  }
}

extension BitBoardLine: Collection {

  public typealias Index = Point
  public typealias Element = Point

  public var startIndex: Index { a }
  public var endIndex: Index { b }

  public subscript(position: Index) -> Element {
      let file: Int = a.file + (b.file - a.file) * position.file / (count - 1)
      let rank: Int = a.rank + (b.rank - a.rank) * position.rank / (count - 1)
      return Point(file: file, rank: rank, owner: owner)
  }


  public func index(after i: Point) -> Point {
      let file: Int = a.file + (b.file - a.file) * i.file / (count - 1)
      let rank: Int = a.rank + (b.rank - a.rank) * i.rank / (count - 1)
      return Index(file: file, rank: rank, owner: owner)
  }
}
