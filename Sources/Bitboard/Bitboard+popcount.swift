
public extension Bitboard {
    
    /// 立ち上がりビットの位置返す
    var popcount: Int {
        return self.rawValue.nonzeroBitCount
    }
}
