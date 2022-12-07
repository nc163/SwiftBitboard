public struct BitBoardLine: Hashable {

    public typealias Point = BitBoardPoint

    public let a: Point
    public let b: Point

    internal init(a: Point, b: Point) {
        self.a = a
        self.b = b
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
        return Point(file: file, rank: rank)
    }

    public func index(after i: Index) -> Index {
        let file: Int = a.file + (b.file - a.file) * i.file / (count - 1)
        let rank: Int = a.rank + (b.rank - a.rank) * i.rank / (count - 1)
        return Point(file: file, rank: rank)
    }
}
