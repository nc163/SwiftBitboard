
public extension Bitboard {
    
    /// 
    var popcount: Int {
        return self.rawValue.nonzeroBitCount
    }
}
