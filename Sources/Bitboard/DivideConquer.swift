////
////  aaa.swift
////  Bitboard
////
////  Created by noda on 2021/09/20.
////
//import Foundation
//import BigInt
//
//extension FixedWidthInteger {
//    func rotate90(rank: Int, file: Int) -> Self {
//        return DivideConquer(rank: rank, file: file)
//    }
//    
//    fileprivate func DivideConquer (rank: Int, file: Int) -> Self {
//        
//        let shift = Self.bitWidth - (rank * (file - 1) + file)
//
//        switch self.bitWidth {
////        case 128:
////            let any = BigUInt(self)
////            var upperBits: UInt64 = any.value.upperBits
////            var lowerBits: UInt64 = any.value.lowerBits
////
////            // 分割統治
////            upperBits = (upperBits & 0x00000000FFFFFFFF) << 32 | (upperBits & 0xFFFFFFFF00000000) >> 32
////            upperBits = (upperBits & 0x0000FFFF0000FFFF) << 16 | (upperBits & 0xFFFF0000FFFF0000) >> 16
////            upperBits = (upperBits & 0x00FF00FF00FF00FF) << 08 | (upperBits & 0xFF00FF00FF00FF00) >> 08
////            upperBits = (upperBits & 0x0F0F0F0F0F0F0F0F) << 04 | (upperBits & 0xF0F0F0F0F0F0F0F0) >> 04
////            upperBits = (upperBits & 0x3333333333333333) << 02 | (upperBits & 0xCCCCCCCCCCCCCCCC) >> 02
////            upperBits = (upperBits & 0x5555555555555555) << 01 | (upperBits & 0xAAAAAAAAAAAAAAAA) >> 01
////
////            lowerBits = (lowerBits & 0x00000000FFFFFFFF) << 32 | (lowerBits & 0xFFFFFFFF00000000) >> 32
////            lowerBits = (lowerBits & 0x0000FFFF0000FFFF) << 16 | (lowerBits & 0xFFFF0000FFFF0000) >> 16
////            lowerBits = (lowerBits & 0x00FF00FF00FF00FF) << 08 | (lowerBits & 0xFF00FF00FF00FF00) >> 08
////            lowerBits = (lowerBits & 0x0F0F0F0F0F0F0F0F) << 04 | (lowerBits & 0xF0F0F0F0F0F0F0F0) >> 04
////            lowerBits = (lowerBits & 0x3333333333333333) << 02 | (lowerBits & 0xCCCCCCCCCCCCCCCC) >> 02
////            lowerBits = (lowerBits & 0x5555555555555555) << 01 | (lowerBits & 0xAAAAAAAAAAAAAAAA) >> 01
////
////            let t = UInt128(upperBits: upperBits, lowerBits: lowerBits)
////            return Self(t) >> shift
//
//        case UInt64.bitWidth:
//            var lowerBits: UInt64 = self as! UInt64
//
//            // 分割統治
//            lowerBits = (lowerBits & 0x00000000FFFFFFFF) << 32 | (lowerBits & 0xFFFFFFFF00000000) >> 32
//            lowerBits = (lowerBits & 0x0000FFFF0000FFFF) << 16 | (lowerBits & 0xFFFF0000FFFF0000) >> 16
//            lowerBits = (lowerBits & 0x00FF00FF00FF00FF) << 08 | (lowerBits & 0xFF00FF00FF00FF00) >> 08
//            lowerBits = (lowerBits & 0x0F0F0F0F0F0F0F0F) << 04 | (lowerBits & 0xF0F0F0F0F0F0F0F0) >> 04
//            lowerBits = (lowerBits & 0x3333333333333333) << 02 | (lowerBits & 0xCCCCCCCCCCCCCCCC) >> 02
//            lowerBits = (lowerBits & 0x5555555555555555) << 01 | (lowerBits & 0xAAAAAAAAAAAAAAAA) >> 01
//
//            return Self((lowerBits) >> shift)
//
//        case UInt32.bitWidth:
//            var lowerBits: UInt32 = self as! UInt32
//
//            // 分割統治
//            lowerBits = (lowerBits & 0xFFFFFFFF) << 32 | (lowerBits & 0x00000000) >> 32
//            lowerBits = (lowerBits & 0x0000FFFF) << 16 | (lowerBits & 0xFFFF0000) >> 16
//            lowerBits = (lowerBits & 0x00FF00FF) << 08 | (lowerBits & 0xFF00FF00) >> 08
//            lowerBits = (lowerBits & 0x0F0F0F0F) << 04 | (lowerBits & 0xF0F0F0F0) >> 04
//            lowerBits = (lowerBits & 0x33333333) << 02 | (lowerBits & 0xCCCCCCCC) >> 02
//            lowerBits = (lowerBits & 0x55555555) << 01 | (lowerBits & 0xAAAAAAAA) >> 01
//
//            return Self((lowerBits) >> shift)
//
//        case UInt16.bitWidth:
//            var lowerBits: UInt16 = self as! UInt16
//
//            // 分割統治
//            lowerBits = (lowerBits & 0xFFFF) << 16 | (lowerBits & 0x0000) >> 16
//            lowerBits = (lowerBits & 0x00FF) << 08 | (lowerBits & 0xFF00) >> 08
//            lowerBits = (lowerBits & 0x0F0F) << 04 | (lowerBits & 0xF0F0) >> 04
//            lowerBits = (lowerBits & 0x3333) << 02 | (lowerBits & 0xCCCC) >> 02
//            lowerBits = (lowerBits & 0x5555) << 01 | (lowerBits & 0xAAAA) >> 01
//
//            return Self((lowerBits) >> shift)
//
//        default:
//            return 0; // !?!?
//        }
//    }
//}
