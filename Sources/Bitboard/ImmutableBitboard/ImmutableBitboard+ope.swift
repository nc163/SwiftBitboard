
public extension MutableBitboard {
    
    // ==
    static func == (_ lhs: Self, _ rhs: Self) -> Bool {
        return lhs.rawValue == rhs.rawValue && lhs.fileWidth == rhs.fileWidth && lhs.rankWidth == rhs.rankWidth
    }
}
