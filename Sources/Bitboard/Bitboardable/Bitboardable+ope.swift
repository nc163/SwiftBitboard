
public extension Bitboardable {
//
//  // ~
//  static prefix func ~ (arg: Self) -> Self {
//    var bb: Self = arg.clone()
//
//    bb.rawValue = ~bb.rawValue
//    return bb
//  }
//
//  // &
//  static func & (_ lhs: Self,  _ rhs: Self) -> Self {
//    guard lhs.fileWidth == rhs.fileWidth && lhs.rankWidth == rhs.rankWidth else {
//        // TODO: error
//        fatalError("")
//    }
//    var bb: Self = lhs.clone()
//    bb.rawValue = (lhs.rawValue & rhs.rawValue)
//    return bb
//  }
//
//
//  // |
//  static func | (_ lhs: Self, _ rhs: Self) -> Self {
//    guard lhs.fileWidth == rhs.fileWidth && lhs.rankWidth == rhs.rankWidth else {
//        // TODO: error
//        fatalError("")
//    }
//    var bb: Self = lhs.clone()
//    bb.rawValue = (lhs.rawValue | rhs.rawValue)
//    return bb
//  }
//
//  // ^
//  static func ^ (_ lhs: Self, _ rhs: Self) -> Self {
//    guard lhs.fileWidth == rhs.fileWidth && lhs.rankWidth == rhs.rankWidth else {
//        // TODO: error
//        fatalError("")
//    }
//    var bb: Self = lhs.clone()
//    bb.rawValue = (lhs.rawValue ^ rhs.rawValue)
//    return bb
//  }

  // 左回転
  static func << (lhs: Self, reg: Digree) -> Self {
    switch reg {
    case .deg0, .deg360:
      return lhs
    case .deg90:
      return lhs
    case .deg180:
      return lhs
    case .deg270:
      return lhs
    }
  }

  // 右回転
  static func >> (lhs: Self, reg: Digree) -> Self {
    switch reg {
    case .deg0, .deg360:
      return lhs
    case .deg90:
      return lhs
    case .deg180:
      return lhs
    case .deg270:
      return lhs
    }
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
