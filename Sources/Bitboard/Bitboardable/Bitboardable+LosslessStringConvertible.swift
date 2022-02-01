//
//  Bitboard+LosslessStringConvertible.swift
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
        
//    static let fileRegex = try! NSRegularExpression(pattern: "\\s[A-Z]*$")

    static func DebugDescriptionPurser(description: String) -> Self? {
        // 改行で分割
        let debugDiscriptionLines = description.split(whereSeparator: \.isNewline)

        var check_binary_string: Array<Int> = []
        
        // 行数
        // 先頭行を除いた行の数を数える
        guard debugDiscriptionLines.count > 1 else { return nil }
        let rankWidth: Int = (debugDiscriptionLines.count - 1)
        
        // 桁数
        // " ABCDEFGHIJKLMNOPQRSTUVWXYZ" の形を作って桁数チェック
        let keta = Int(log10(Double(rankWidth)) + 1)
        var space = " "; if(keta > 1){ for _ in [1...keta] { space += " " } }
        let debugDiscriptionfirstLine = space + Alphabet
        guard debugDiscriptionfirstLine.hasPrefix(debugDiscriptionLines[0]) else { return nil }
        let fileWidth: Int = (debugDiscriptionLines[0].count - (keta))
        
        var rawValue: BigUInt = 0
        
        // "01**--" のように、数値から始まって、"*" or "-"の連続が来ることをチェックする正規表現
        let rankRegex = try! NSRegularExpression(pattern: "^[0-99]{\(keta)}[\\*-]*$")

        // 改行で分解、１行目は無視
        for rank in 1...rankWidth {
            let line = debugDiscriptionLines[rank]
            // チェック
            guard (rankRegex.firstMatch(in: String(line), options: [], range: NSRange.init(location: 0, length: line.count)) != nil) else { return nil }
            //
            // 文字" * * - - " を 1100に変換
            let bit_string = String(line[line.index(line.startIndex, offsetBy: keta)..<line.endIndex])
            var reversed_binary_string = bit_string.replacingOccurrences(of: "-", with: "0")
            reversed_binary_string = reversed_binary_string.replacingOccurrences(of: "*", with: "1")
            let binary_string = String(reversed_binary_string.reversed())
            
            // バラバラの数値幅の監視
            check_binary_string.append(binary_string.count)
            for d in 0 ..< check_binary_string.count {
                if check_binary_string[d] != binary_string.count {
                    return nil
                }
            }
            
            // 基数2の数値を表す文字列から数値に変換
            guard var rankRawValue: BigUInt = BigUInt(binary_string, radix: 2) else {
                return nil
            }
            
            // この数値が表す位置までシフトする
            let rank = Int(line[line.startIndex..<line.index(line.startIndex, offsetBy: keta)])! - 1
            for _ in 0 ..< rank {
                rankRawValue = rankRawValue << (rankWidth)
            }
            
            rawValue |= rankRawValue
        }
        
        return Self.init( fileWidth: fileWidth, rankWidth: rankWidth, rawValue: rawValue)
    }
}

//
// MARK: public
//

// MARK: LosslessStringConvertible
public extension Bitboardable {
    
    /// <#Description#>
    /// - Parameter description: """  ABCDE
    ///  1*----
    ///  2-*---
    ///  3--*--
    ///  4---*-
    ///  """
    init?(_ description: String) {
        if let de = Self.init(description: description) {
            self = de
            return
        }
        if let dd = Self.init(debugDescription: description) {
            self = dd
            return
        }
        
        return nil
    }
    
    /// <#Description#>
    /// - Parameter description: """
    ///  *----
    ///  -*---
    ///  --*--
    ///  ---*-
    ///  """
    fileprivate init?(description: String) {
        guard let tmp = Self.DebugDescriptionPurser(description: description) else {
            return nil
        }
        self = tmp
    }
    
    /// <#Description#>
    /// - Parameter description: """  ABCDE
    ///  1*----
    ///  2-*---
    ///  3--*--
    ///  4---*-
    ///  """
    fileprivate init?(debugDescription: String) {
        guard let tmp = Self.DebugDescriptionPurser(description: debugDescription) else {
            return nil
        }
        self = tmp
    }
}
