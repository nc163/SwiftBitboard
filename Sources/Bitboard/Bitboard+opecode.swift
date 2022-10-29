
public extension Bitboard {
    
    static func eq (lhs: Self, rhs: Self) -> Bool {
        return lhs.rawValue == rhs.rawValue && lhs.fileWidth == rhs.fileWidth && lhs.rankWidth == rhs.rankWidth
    }
    
    func not () -> Self {
        var bb: Self = self.Clone()
        bb.rawValue = ~self.rawValue
        return bb
    }
    
    static func and (lhs: Self, rhs: Self) -> Self {
        guard lhs.size == rhs.size else {
            // TODO: error
            fatalError("")
        }
        var bb: Self = lhs.Clone()
        bb.rawValue = (lhs.rawValue & rhs.rawValue)
        return bb
    }
    
    static func or (lhs: Self, rhs: Self) -> Self {
        guard lhs.size == rhs.size else {
            // TODO: error
            fatalError("")
        }
        var bb: Self = lhs.Clone()
        bb.rawValue = (lhs.rawValue | rhs.rawValue)
        return bb
    }
    
    static func xor (lhs: Self, rhs: Self) -> Self {
        guard lhs.size == rhs.size else {
            // TODO: error
            fatalError("")
        }
        var bb: Self = lhs.Clone()
        bb.rawValue = (lhs.rawValue ^ rhs.rawValue)
        return bb
    }
    
//    static func << (lhs: Self, rhs: Int) -> Self {
//
//        try! BitboardError(.notImplemented(""))
//
//        return lhs
////        var retval: Self.RawValue = .init()
////
////        let max: Self.RawValue = Self.RawValue.max
////
////        lhs.RankRange.forEach {
////            let line = ~(max << lhs.fileWidth)
////            let mask = line << (($0 - 1) * (lhs.fileWidth))
////
////            retval |= (mask << rhs)
////        }
////
////        return try! Self.init(rawValue:retval, fileWidth: lhs.fileWidth, rankWidth: lhs.rankWidth)
//    }
//
//    static func >> (lhs: Self, rhs: Int) -> Self {
//
//        try! BitboardError(.notImplemented(""))
//
//        return lhs
////        var retval: Self.RawValue = .init()
////
////        let max: Self.RawValue = Self.RawValue.max
////
////        Array(1...lhs.rankWidth).forEach {
////            let line = ~(max << lhs.fileWidth)
////            let mask = line << (($0 - 1) * (lhs.fileWidth))
////
////            retval |= (mask >> rhs)
////        }
////
////        return try! Self.init(rawValue:retval, fileWidth: lhs.fileWidth, rankWidth: lhs.rankWidth)
//    }
//    
//    
//    //
//    // MARK: 複合代入演算子
//    //
//    
//    /// and
//    /// - Parameters:
//    ///   - lhs: <#lhs description#>
//    ///   - rhs: <#rhs description#>
//    static func &= (lhs: inout Self, rhs: Self) {
//        lhs = lhs & rhs
//    }
//    
//    
//    /// or
//    /// - Parameters:
//    ///   - lhs: <#lhs description#>
//    ///   - rhs: <#rhs description#>
//    static func ^= (lhs: inout Self, rhs: Self) {
//        lhs = lhs ^ rhs
//    }
//    
//    
//    /// xor
//    /// - Parameters:
//    ///   - lhs: <#lhs description#>
//    ///   - rhs: <#rhs description#>
//    static func |= (lhs: inout Self, rhs: Self) {
//        lhs = lhs | rhs
//    }
//    
//    
//    /// <#Description#>
//    /// - Parameters:
//    ///   - lhs: <#lhs description#>
//    ///   - rhs: <#rhs description#>
//    static func <<= (lhs: inout Self, rhs: Int) {
//        lhs = lhs << rhs
//    }
//    
//    
//    /// <#Description#>
//    /// - Parameters:
//    ///   - lhs: <#lhs description#>
//    ///   - rhs: <#rhs description#>
//    static func >>= (lhs: inout Self, rhs: Int) {
//        lhs = lhs >> rhs
//    }
//    
}
