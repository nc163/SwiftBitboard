
public extension ImmutableBitboard {

    // 2点が直線上にあるかどうかを判定する
    static func straight(_ left: Self.Point, _ right: Self.Point) -> Bool {
        return left.file == right.file
        || left.rank == right.rank
        || abs( Double(left.file - right.file) / Double(left.rank - right.rank)) == 1.00
    }

    var size: Size {
        Size.init(fileWidth: self.fileWidth, rankWidth: self.rankWidth)
    }


    func bit_to_point (bit: Int) -> Self.Point {
        return .init(file: 0, rank: 0, owner: self)
    }

    func point_to_bit (point: Self.Point) -> (file: Int, rank: Int) {
        return (0 , 0)
    }
}
