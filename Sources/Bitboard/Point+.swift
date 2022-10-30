
public extension Bitboard.Point {
    
    static func straight(_ left: Self, _ right: Self) -> Bool {
        return left.file == right.file
        || left.rank == right.rank
        || abs( Double(left.file - right.file) / Double(left.rank - right.rank)) == 1.00
    }
}
