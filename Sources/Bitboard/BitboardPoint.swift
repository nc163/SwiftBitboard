public struct BitboardPoint: Hashable {
    public let file: Int
    public let rank: Int
    
    public static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.file == rhs.file && lhs.rank == rhs.rank
    }
     
     public static func < (lhs: Self, rhs: Self) -> Bool {
         return lhs.rank < rhs.rank
             || lhs.rank == rhs.rank && lhs.file < rhs.file
     }
}

internal extension BitboardPoint {
    
    func straight(to: Self) -> Bool {
        return self.file == to.file
        || self.rank == to.rank
        || abs( Double(self.file - to.file) / Double(self.rank - to.rank)) == 1.00
    }
}
