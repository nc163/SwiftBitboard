fileprivate let ALPHABET: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

fileprivate extension Bitboardable {
    fileprivate static var bbPattern: NSRegularExpression { try! NSRegularExpression(pattern: "^bb", options: []) }
    fileprivate static var bbFileWidthPattern: NSRegularExpression { try! NSRegularExpression(pattern: "^A[B-Z].*\n", options: []) }

    fileprivate static var toFileWidthPattern: NSRegularExpression { try! NSRegularExpression(pattern: "^bbA[B-Z]+$", options: [.anchorsMatchLines]) }
    fileprivate static var toRankWidthPattern: NSRegularExpression {try! NSRegularExpression(pattern: "^[0-9]{2,}[*|-].*$", options: [.anchorsMatchLines]) }
    
    static func ParseDescription(_ description: String) -> Self? {
        /**
         * # 入力から以下のデータを取り出す
         * 1. 列数 
         * 2. 行数
         * 3. bitデータ
         * ここで、期待する入力の形は次の形
         *```
         *bbABCD
         *01----
         *02----
         *03----
         *```
         * ## 列数の取り出し方
         * 正規表現を用いて `bbABCDE...`の部分を取り出して
         *
         * ## 行数の取り出し方
         *
         * ## 数値の取り出し方
         */
        do {
            var fileWidth: Int = 0
            var rankWidth: Int = 0
            var rawValue: Int = 0
            var remaining: Substring
            
//            do {
//                let range = Self.bbPattern.rangeOfFirstMatch(
//                    in: description, 
//                    options: [], 
//                    range: .init(location: 0, length: description.count)
//                );
//                
//                if range.location == NSNotFound {
//                    fileWidth = -1
//                    return nil
//                }
//                
//                let start = description.index(description.startIndex, offsetBy: range.length)
//                remaining = description[start..<description.endIndex]
//            }
//            
//            do {
//                let range = Self.bbFileWidthPattern.rangeOfFirstMatch(
//                    in: String(remaining), 
//                    options: [], 
//                    range: .init(location: 0, length: remaining.count)
//                );
//                
//                if range.location == NSNotFound {
//                    fileWidth = -1
//                    return nil
//                }
//                let start = description.index(remaining.startIndex, offsetBy: 0)
//                remaining = description[start..<remaining.endIndex]
//
//                do {
//                    remaining[range]
//                    // result = "bbABCDEF...."
//                    let start = remaining.index(start, offsetBy: 2)
//                    let file = String(remaining[start..<range.lowerBound])
//                    guard ALPHABET.contains(file) else {
//                        fileWidth = -1
//                        return nil
//                    }
//                    fileWidth = file.count
//                }
//            }
//            
//            
//            
            
            
            
            
            
            do {
                guard let result = Self
                        .toFileWidthPattern
                        .firstMatch(
                            in: description, 
                            options: [], 
                            range: NSRange(location: 0, length: description.count))
                else {
                    fileWidth = -1
                    return nil
                }
                let start = description.index(description.startIndex, offsetBy: 0)
                let end = description.index(start, offsetBy: result.range(at: 0).length)
                
                do {
                    // result = "bbABCDEF...."
                    let start = description.index(start, offsetBy: 2)
                    let file = String(description[start..<end])
                    guard ALPHABET.contains(file) else {
                        fileWidth = -1
                        return nil
                    }
                    fileWidth = file.count
                }
                
                /**
                 *remaining = """
                 *01----
                 *02----
                 *03----
                 *"""
                 */
//                let remaining = description[end..<description.endIndex]
                let remaining = String(description[end..<description.endIndex])
                
                Self.toRankWidthPattern.enumerateMatches(
                    in: String(remaining), 
                    options: [], 
                    range: NSRange(location: 0, length: remaining.count)
                ) {
                    (result, flags, stop) in
                    if let result = result {
                        for i in 0..<result.numberOfRanges {
                            
                            // 01----..
                            let start = remaining.index(remaining.startIndex, offsetBy: result.range(at: i).location)
                            let end = remaining.index(start, offsetBy: result.range(at: i).length)
                            let rank = String(remaining[start..<end])
                            print(rank)
                            
                            do {
                                let end = remaining.index(start, offsetBy: 2)
                                guard let index = Int(remaining[start..<end]) else {
                                    rankWidth = -1
                                    stop.pointee = false
                                    break;
                                }
                                guard ( (rankWidth + 1) == index) else {
                                    rankWidth = -1
                                    stop.pointee = false
                                    break;
                                }
                                
                                rankWidth = index
                            }
                            
                            do {
                                let start = remaining.index(remaining.startIndex, offsetBy: 2)
                                let text = String(remaining[start..<end])
                                
                                print(result.range(at: i))
                                print(text)
                            }
                        }
                    } else {
                        rankWidth = -1
                        stop.pointee = false
                    }
                }
                
                guard fileWidth >= 0 || rankWidth >= 0 else {
                    return nil
                }
                
                print(fileWidth)
                print(rankWidth)
            }
        }
        
        
        return nil
        //        
        //        do {
        //            var fileWidth = 0
        //            var rankWidth = 0
        //            
        //            guard let result = Self.toBoardRegex.firstMatch(in: csa_v_2_2, options: [], range: NSRange(0..<csa_v_2_2.count)) else {
        //                return nil
        //            }
        //            
        //        }
        //        
        //        // 改行で分割
        //        let debugDiscriptionLines = description.split(whereSeparator: \.isNewline)
        //
        //        var check_binary_string: Array<Int> = []
        //        
        //        // 行数
        //        // 先頭行を除いた行の数を数える
        //        guard debugDiscriptionLines.count > 1 else { return nil }
        //        let rankWidth: Int = (debugDiscriptionLines.count - 1)
        //        
        //        // 桁数
        //        // " ABCDEFGHIJKLMNOPQRSTUVWXYZ" の形を作って桁数チェック
        //        let keta = Int(log10(Double(rankWidth)) + 1)
        //        var space = " "; if(keta > 1){ for _ in [1...keta] { space += " " } }
        //        let debugDiscriptionfirstLine = space + Alphabet
        //        guard debugDiscriptionfirstLine.hasPrefix(debugDiscriptionLines[0]) else { return nil }
        //        let fileWidth: Int = (debugDiscriptionLines[0].count - (keta))
        //        
        //        var rawValue: BigUInt = 0
        //        
        //        // "01**--" のように、数値から始まって、"*" or "-"の連続が来ることをチェックする正規表現
        //        let rankRegex = try! NSRegularExpression(pattern: "^[0-99]{\(keta)}[\\*-]*$")
        //
        //        // 改行で分解、１行目は無視
        //        for rank in 1...rankWidth {
        //            let line = debugDiscriptionLines[rank]
        //            // チェック
        //            guard (rankRegex.firstMatch(in: String(line), options: [], range: NSRange.init(location: 0, length: line.count)) != nil) else { return nil }
        //            //
        //            // 文字" * * - - " を 1100に変換
        //            let bit_string = String(line[line.index(line.startIndex, offsetBy: keta)..<line.endIndex])
        //            var reversed_binary_string = bit_string.replacingOccurrences(of: "-", with: "0")
        //            reversed_binary_string = reversed_binary_string.replacingOccurrences(of: "*", with: "1")
        //            let binary_string = String(reversed_binary_string.reversed())
        //            
        //            // バラバラの数値幅の監視
        //            check_binary_string.append(binary_string.count)
        //            for d in 0 ..< check_binary_string.count {
        //                if check_binary_string[d] != binary_string.count {
        //                    return nil
        //                }
        //            }
        //            
        //            // 基数2の数値を表す文字列から数値に変換
        //            guard var rankRawValue: BigUInt = BigUInt(binary_string, radix: 2) else {
        //                return nil
        //            }
        //            
        //            // この数値が表す位置までシフトする
        //            let rank = Int(line[line.startIndex..<line.index(line.startIndex, offsetBy: keta)])! - 1
        //            for _ in 0 ..< rank {
        //                rankRawValue = rankRawValue << (rankWidth)
        //            }
        //            
        //            rawValue |= rankRawValue
        //        }
        //        
        //        return Self.init( fileWidth: fileWidth, rankWidth: rankWidth, rawValue: rawValue)
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
        guard let tmp = Self.ParseDescription(description) else {
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
        guard let tmp = Self.ParseDescription(debugDescription) else {
            return nil
        }
        self = tmp
    }
}
