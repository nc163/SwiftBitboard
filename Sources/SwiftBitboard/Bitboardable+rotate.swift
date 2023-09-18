import Foundation

extension Bitboard {
  
  ///
  public mutating func bitrotate(_ digree: Digree) -> Bool {
    // bitwidth が 2^n の場合しか処理をできない
    guard self.isBitWidthPowerOfTwo && self.square else {
        return false
    }

    guard digree == .deg0 || digree == .deg180 || digree == .deg360 else {
        return false
    }

    let rotate_count = digree.rawValue / 180

    var next: Self.RawValue = self.rawValue
    for _ in 0..<rotate_count {
        next = rotate180(fileWidth: self.fileWidth, rankWidth: self.rankWidth, rawValue: next)

        /// bitboardはSelf.RawValueの一部しか使っていないが、getBitRotate90ではSelf.RawValue全体を回転させている
        /// ので回転させた後で値の先頭をbitboardの先頭になるように辻褄を合わせる必要がある。
        let shift: Int = Self.RawValue.bitWidth - (self.rankWidth * (self.fileWidth - 1) + self.fileWidth)
        next = Self.RawValue(next) >> shift
    }
    self.rawValue = next
    return true
  }
}
