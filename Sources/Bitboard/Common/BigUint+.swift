////
////  BigUint+.swift
////  Bitboard
////
////  Created by noda on 2021/10/06.
////

import Foundation
import BigInt

#if DEBUG

extension BigUInt {
    var binaryString: String {
        return "0b" + String(self , radix: 2)
    }
}

#endif
