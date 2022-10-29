internal struct Size: Hashable {

    fileprivate let fileWidth: Int
    fileprivate let rankWidth: Int

    var hashValue: Int {
        return fileWidth.hashValue ^ rankWidth.hashValue
    }

    func ==(lhs: Size, rhs: Size) -> Bool {
        return lhs.fileWidth == rhs.fileWidth && lhs.rankWidth == rhs.rankWidth
    }
}
