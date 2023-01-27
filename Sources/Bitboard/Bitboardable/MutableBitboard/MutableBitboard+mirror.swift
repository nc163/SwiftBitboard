
public extension MutableBitboard {

    // https://www.chessprogramming.org/Flipping_Mirroring_and_Rotating

    /// <#Description#>
    /// - Parameter dir: <#dir description#>
    /// - Throws: <#description#>
    func mirror(_ dir: Mirror) -> Self? {

        return nil
//
//        guard self.quadrate else { fatalError("未実装") }
//
//        switch dir {
//        case .vertical:
//            return self.vertical(bb: self);
//        case .horizontal:
//            fatalError("未実装");
////            return self.mirrorVertical(bb: self)
//        }

//        switch dir {
//        case .horizontal: return self.mirror_square_horizontal()
//        case .vertical: return self.mirror_square_vertical()
//        }
    }

// . 1 1 1 1 . . .   . 1 1 1 1 . . .   . 1 1 1 1 . . .   . 1 1 1 1 . . .
// . 1 . . . 1 . .   . 1 . . . 1 . .   . 1 . . . 1 . .   . 1 . . . 1 . .
// . 1 . . . 1 . .   . 1 . . . 1 . .   . 1 . . . 1 . .   . 1 . . . 1 . .
// . 1 . . 1 . . .   . 1 . . 1 . . .   . 1 . . 1 . . .   . 1 . . 1 . . .
// . 1 1 1 . . . .   . 1 1 1 . . . .   . 1 1 1 . . . .   . 1 1 1 . . . .
// . 1 . 1 . . . .   . 1 . 1 . . . .   . 1 . 1 . . . .   . 1 . 1 . . . .
// . 1 . . 1 . . .   . 1 . . 1 . . .   . 1 . . 1 . . .   . 1 . . 1 . . .
// . 1 . . . 1 . .   . 1 . . . 1 . .   . 1 . . . 1 . .   . 1 . . . 1 . .
//        |                 |                  /               \
//  flipVertical     mirrorHorizontal  flipDiagA1H8      flipDiagA8H1
//        |                 |                /                   \
// . 1 . . . 1 . .   . . . 1 1 1 1 .   . . . . . . . .   . . . . . . . .
// . 1 . . 1 . . .   . . 1 . . . 1 .   . . . . . . . .   1 1 1 1 1 1 1 1
// . 1 . 1 . . . .   . . 1 . . . 1 .   1 . . . . 1 1 .   1 . . . 1 . . .
// . 1 1 1 . . . .   . . . 1 . . 1 .   . 1 . . 1 . . 1   1 . . . 1 1 . .
// . 1 . . 1 . . .   . . . . 1 1 1 .   . . 1 1 . . . 1   1 . . 1 . . 1 .
// . 1 . . . 1 . .   . . . . 1 . 1 .   . . . 1 . . . 1   . 1 1 . . . . 1
// . 1 . . . 1 . .   . . . 1 . . 1 .   1 1 1 1 1 1 1 1   . . . . . . . .
// . 1 1 1 1 . . .   . . 1 . . . 1 .   . . . . . . . .   . . . . . . . .
//
//    //
//    // MARK: flipVertical
//    //
//    // URL https://www.chessprogramming.org/Flipping_Mirroring_and_Rotating#Flip_and_Mirror
//    //
//    // 2進数、8進数、10進数、16進数相互変換ツール https://hogehoge.tk/tool/number.html
//
//
//    /// from 列を、 to 列 へシフトする
//    /// - Parameters:
//    ///   - rank: <#rank description#>
//    ///   - shift: <#shift description#>
//    fileprivate func rank_shift(from: Int, to: Int) {
//
//    }
//
//    /// flipVertical
//    /// - Parameter bb: <#bb description#>
//    /// - Returns: <#description#>
//    fileprivate func vertical(bb: Self) -> Self {
////        var rawValue = bb.rawValue
//
//        // 素直に演算すると...
//        // The compiler is unable to type-check this expression in reasonable time; try breaking up the expression into distinct sub-expressions
//        // と,エラーが発生したので一時的に演算の途中結果を結果を配列に保存するようにした
//        var tmp: [BigUInt] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
//        switch self.usebitWidth {
//        case 2*2:
//            tmp[0] = (bb.rawValue <<  2) & BigUInt(0b1100)
//            tmp[1] = (bb.rawValue >>  2) & BigUInt(0b0011)
//        case 3*3:
//            tmp[0] = (bb.rawValue <<  6) & BigUInt(0b111_000_000)
//            tmp[1] = (bb.rawValue      ) & BigUInt(0b000_111_000)
//            tmp[2] = (bb.rawValue >>  6) & BigUInt(0b000_000_111)
//        case 4*4:
//            tmp[0] = (bb.rawValue <<  12) & BigUInt(0b1111_0000_0000_0000)
//            tmp[1] = (bb.rawValue <<   4) & BigUInt(0b0000_1111_0000_0000)
//            tmp[2] = (bb.rawValue >>   4) & BigUInt(0b0000_0000_1111_0000)
//            tmp[3] = (bb.rawValue >>  12) & BigUInt(0b0000_0000_0000_1111)
//        case 5*5:
//            tmp[0] = (bb.rawValue <<  20) & BigUInt(0b11111_00000_00000_00000_00000)
//            tmp[1] = (bb.rawValue <<  10) & BigUInt(0b00000_11111_00000_00000_00000)
//            tmp[2] = (bb.rawValue       ) & BigUInt(0b00000_00000_11111_00000_00000)
//            tmp[3] = (bb.rawValue >>  10) & BigUInt(0b00000_00000_00000_11111_00000)
//            tmp[4] = (bb.rawValue >>  20) & BigUInt(0b00000_00000_00000_00000_11111)
//        case 6*6:
//            tmp[0] = (bb.rawValue <<  30) & BigUInt(0b111111_000000_000000_000000_000000_000000)
//            tmp[1] = (bb.rawValue <<  18) & BigUInt(0b000000_111111_000000_000000_000000_000000)
//            tmp[2] = (bb.rawValue <<   6) & BigUInt(0b000000_000000_111111_000000_000000_000000)
//            tmp[3] = (bb.rawValue >>   6) & BigUInt(0b000000_000000_000000_111111_000000_000000)
//            tmp[4] = (bb.rawValue >>  18) & BigUInt(0b000000_000000_000000_000000_111111_000000)
//            tmp[5] = (bb.rawValue >>  30) & BigUInt(0b000000_000000_000000_000000_000000_111111)
//        case 7*7:
//            tmp[0] = (bb.rawValue <<  42) & BigUInt(0b1111111_0000000_0000000_0000000_0000000_0000000_0000000)
//            tmp[1] = (bb.rawValue <<  28) & BigUInt(0b0000000_1111111_0000000_0000000_0000000_0000000_0000000)
//            tmp[2] = (bb.rawValue <<  14) & BigUInt(0b0000000_0000000_1111111_0000000_0000000_0000000_0000000)
//            tmp[3] = (bb.rawValue       ) & BigUInt(0b0000000_0000000_0000000_1111111_0000000_0000000_0000000)
//            tmp[4] = (bb.rawValue >>  14) & BigUInt(0b0000000_0000000_0000000_0000000_1111111_0000000_0000000)
//            tmp[5] = (bb.rawValue >>  28) & BigUInt(0b0000000_0000000_0000000_0000000_0000000_1111111_0000000)
//            tmp[6] = (bb.rawValue >>  42) & BigUInt(0b0000000_0000000_0000000_0000000_0000000_0000000_1111111)
//        case 8*8:
//            tmp[0] = (bb.rawValue <<  56) & BigUInt(0xff00000000000000)
//            tmp[1] = (bb.rawValue <<  40) & BigUInt(0x00ff000000000000)
//            tmp[2] = (bb.rawValue <<  24) & BigUInt(0x0000ff0000000000)
//            tmp[3] = (bb.rawValue <<   8) & BigUInt(0x000000ff00000000)
//            tmp[4] = (bb.rawValue >>   8) & BigUInt(0x00000000ff000000)
//            tmp[5] = (bb.rawValue >>  24) & BigUInt(0x0000000000ff0000)
//            tmp[6] = (bb.rawValue >>  40) & BigUInt(0x000000000000ff00)
//            tmp[7] = (bb.rawValue >>  56) & BigUInt(0x00000000000000ff)
//        case 9*9:
//            tmp[0] = (bb.rawValue << 72) & BigUInt(  "1FF000000000000000000", radix: 16)!
//            tmp[1] = (bb.rawValue << 54) & BigUInt(  "000FF8000000000000000", radix: 16)!
//            tmp[2] = (bb.rawValue << 36) & BigUInt( 0x000007FC0000000000000 )
//            tmp[3] = (bb.rawValue << 18) & BigUInt( 0x00000003FE00000000000 )
//            tmp[4] = (bb.rawValue      ) & BigUInt( 0x0000000001FF000000000 )
//            tmp[5] = (bb.rawValue >> 18) & BigUInt( 0x000000000000FF8000000 )
//            tmp[6] = (bb.rawValue >> 36) & BigUInt( 0x000000000000007FC0000 )
//            tmp[7] = (bb.rawValue >> 54) & BigUInt( 0x00000000000000003FE00 )
//            tmp[8] = (bb.rawValue >> 72) & BigUInt( 0x0000000000000000001FF )
//        default:
//            fatalError()
//        }
//
//        // ここは isSquare 関係なく用意しておく必要ある
//        // 横一列を配列に入れてるから、横列分とって | すればよい？
//        let retval: BigUInt = self.rankRange.reduce(0) { result, rank in
//            return result | tmp[rank]
//        }
//
//        return Bitboard(rawValue: retval)
//    }
//
//    fileprivate func horizontal() -> Self {
//
//        return Bitboard(rawValue: 0)
//    }

//    fileprivate func mirror_square_horizontal() -> Self {
//
//        var x = self.rawValue
//
//        x = ((x >> 1) & 0x5555555555555555) | ((x & 0x5555555555555555) << 1)
//        x = ((x >> 2) & 0x3333333333333333) | ((x & 0x3333333333333333) << 2)
//        x = ((x >> 4) & 0x0F0F0F0F0F0F0F0F) | ((x & 0x0F0F0F0F0F0F0F0F) << 4)
//
//        return Bitboard(rawValue: x)
//    }
//
//
//    fileprivate func mirror_square_vertical() -> Self {
//
//        var x = self.rawValue
//
//        x = ((x >> 1) & 0x5555555555555555) | ((x & 0x5555555555555555) << 1)
//        x = ((x >> 2) & 0x3333333333333333) | ((x & 0x3333333333333333) << 2)
//        x = ((x >> 4) & 0x0F0F0F0F0F0F0F0F) | ((x & 0x0F0F0F0F0F0F0F0F) << 4)
//
//        return Bitboard(rawValue: x)
//    }
}
