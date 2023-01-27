public struct BitBoardPoint<Owner: ImmutableBitboard>: ImmutableBitboard, Comparable {

    public typealias RawValue = Owner.RawValue

    public var fileWidth: Int { owner.fileWidth }
    public var rankWidth: Int { owner.rankWidth }
    public var rawValue: Owner.RawValue { owner.rawValue }

    public let file: Int
    public let rank: Int
    let owner: Owner

    internal init(file: Int, rank: Int, owner: Owner) {
        self.file = file
        self.rank = rank
        self.owner = owner
    }

    public func clone() -> BitBoardPoint<Owner> {
        .init(file: file, rank: rank, owner: owner)
    }

    public static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.file == rhs.file && lhs.rank == rhs.rank
    }

    public static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.rank < rhs.rank
            || lhs.rank == rhs.rank && lhs.file < rhs.file
    }
}
