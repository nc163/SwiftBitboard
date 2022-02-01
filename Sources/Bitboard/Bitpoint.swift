//
//  Bitpoint.swift
//  Bitboard
//
//  Created by noda on 2021/09/20.
//

import Foundation

public struct Bitpoint<T: Bitboardable>: CustomStringConvertible {
    
    //
    // MARK: property
    //
    
    public let owner: T
    public let file: Int
    public let rank: Int
    
    public var bit: Bool {
        get { owner.bitscan(file: file, rank: rank) }
    }

    internal init(owner: T, file: Int, rank: Int) {
        self.owner = owner
        self.file = file
        self.rank = rank
    }
    
    //
    // MARK:
    //
    
    public func nonZeroBitpoints(bitboard: Bitboard) -> [Self] {
        return bitboard.nonZeroBitpoints().map { p in
            Self.init(owner: owner, file: p.file, rank: p.rank)
        }
    }
}

extension Bitpoint {
    public var description: String {
        var retval = "file:rank = \(file):\(rank)\n"
        retval += owner.description
        return retval
    }
}
//extension StringProtocol {
//    func index<S: StringProtocol>(of string: S, options: String.CompareOptions = []) -> Index? {
//        range(of: string, options: options)?.lowerBound
//    }
//    func endIndex<S: StringProtocol>(of string: S, options: String.CompareOptions = []) -> Index? {
//        range(of: string, options: options)?.upperBound
//    }
//    func indices<S: StringProtocol>(of string: S, options: String.CompareOptions = []) -> [Index] {
//        ranges(of: string, options: options).map(\.lowerBound)
//    }
//    func ranges<S: StringProtocol>(of string: S, options: String.CompareOptions = []) -> [Range<Index>] {
//        var result: [Range<Index>] = []
//        var startIndex = self.startIndex
//        while startIndex < endIndex,
//            let range = self[startIndex...]
//                .range(of: string, options: options) {
//                result.append(range)
//                startIndex = range.lowerBound < range.upperBound ? range.upperBound :
//                    index(range.lowerBound, offsetBy: 1, limitedBy: endIndex) ?? endIndex
//        }
//        return result
//    }
//}
