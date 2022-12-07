public struct BitBoardPoint: Hashable, Comparable {

    public let file: Int
    public let rank: Int

    internal init(file: Int, rank: Int) {
        self.file = file
        self.rank = rank
    }
    
    public static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.file == rhs.file && lhs.rank == rhs.rank
    }
    
    public static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.rank < rhs.rank
            || lhs.rank == rhs.rank && lhs.file < rhs.file
    }
}
