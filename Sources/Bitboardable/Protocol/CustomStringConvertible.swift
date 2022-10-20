//
//  Bitboard+CustomStringConvertible.swift
//  Bitboard
//
//  Created by yo_shin_o on 2021/07/26.
//

import Foundation
import BigInt

//
// MARK: fileprivate
//

fileprivate extension Bitboardable {
    
    /// <#Description#>
    var space_padding: String {
        if self.rankWidth >= 10 {
            return "  "
        }
        return " "
    }
    
    /// 桁数を合わせて０埋めで出力する
    /// - Parameter rank: <#rank description#>
    /// - Returns: <#description#>
    @inline(__always) private func zeroPadding_fileWidthformat(rank: Int) -> String {
        if self.rankWidth >= 10 {
            return String(format: "%02d", rank)
        }
        return String(format: "%01d", rank)
    }
}

//
// MARK: public
//

// MARK: CustomStringConvertible
public extension Bitboardable {
    
    /// <#Description#>
    /// example:
    ///  ABCDE
    /// 1*----
    /// 2-*---
    /// 3--*--
    /// 4---*-
    var description: String {
        return "adasdasdasda"
        var retval = String()
        var index: BigUInt = 1
        let current = BigUInt(self.rawValue)
        
        let fileRange = (1..<(self.fileWidth + 1))
        let rankRange = (1..<(self.rankWidth + 1))

        // " ABCDE..."
        retval += space_padding; fileRange.forEach { (f) in retval += String(UnicodeScalar(64 + f)!) };  retval += "\n";
        rankRange.forEach { (r) in
            retval += zeroPadding_fileWidthformat(rank: r)
            fileRange.forEach { (f) in
                retval += (current & index) > 0 ? "*" : "-"
                index <<= 1
            }
            if r != self.rankWidth { retval += "\n"; }
        }
        
        return retval
    }
}
