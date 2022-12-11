@testable import Bitboard

public struct Bitboard32: Bitboard {
    
    public typealias RawValue = UInt32
    
    public var rawValue: RawValue
    public var fileWidth: Int
    public var rankWidth: Int
    
    public func clone() -> Self {
        .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
    }
}

public struct Bitboard64: Bitboard {
    
    public typealias RawValue = UInt64
    
    public var rawValue: RawValue
    public var fileWidth: Int
    public var rankWidth: Int
    
    public func clone() -> Self {
        .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
    }
}

public struct Bitboard128: Bitboard {
    
    public typealias RawValue = UInt128
    
    public var rawValue: RawValue
    public var fileWidth: Int
    public var rankWidth: Int
    
    public func clone() -> Self {
        .init(rawValue: self.rawValue, fileWidth: self.fileWidth, rankWidth: self.rankWidth)
    }
}
