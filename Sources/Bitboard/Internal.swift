
internal struct Size: Hashable {
    let fileWidth: Int
    let rankWidth: Int
    
    static func ==(lhs: Size, rhs: Size) -> Bool {
        return lhs.fileWidth == rhs.fileWidth && lhs.rankWidth == rhs.rankWidth
    }
}

internal extension Bitboard {
    
    var size: Size {
        Size.init(fileWidth: self.fileWidth, rankWidth: self.rankWidth)
    }
    
    var quadrate: Bool {
        return self.fileWidth == self.rankWidth
    }
    
}
