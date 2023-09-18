import Foundation

extension Bitboardable {
  
  var zero: Self {
    .init(rawValue: 0)
  }
  
  var fill: Self {
    if self.fileWidth * self.rankWidth > MemoryLayout<RawValue>.size * 8 {
        fatalError("n * m exceeds the bit size of RawValue!")
    }
    
    return .init(rawValue: (1 << (self.fileWidth * self.rankWidth)) - 1)
  }
  
  var nonzeroBitCount: Int {
    rawValue.nonzeroBitCount
  }
  
  /// RawValue.bitwidth が 2^n かどうか
  var isBitWidthPowerOfTwo: Bool {
    RawValue.bitWidth.nonzeroBitCount == 1
  }

  ///
  func rotate180 (fileWidth: Int, rankWidth: Int, rawValue: RawValue) -> Self.RawValue {
    var value: RawValue = self.rawValue

    // words.count == 1 / != 1 で処理を分ける方が正確
    // var words: Self.RawValue.Words = self.rawValue.words

    switch self.rawValue.bitWidth {
    case 128:
        var lowerBits: UInt64 = 0
        var upperBits: UInt64 = 0
        if self.rawValue.words.count == 2 {
            lowerBits = UInt64(self.rawValue.words[0])
            upperBits = UInt64(self.rawValue.words[1])
        } else if self.rawValue.words.count == 4 {
            lowerBits =  UInt64(self.rawValue.words[0])
            lowerBits |= UInt64(self.rawValue.words[1]) << UInt32.bitWidth
            upperBits =  UInt64(self.rawValue.words[2])
            upperBits |= UInt64(self.rawValue.words[3]) << UInt32.bitWidth
        }

        upperBits = (upperBits & 0x00000000FFFFFFFF) << 32 | (upperBits & 0xFFFFFFFF00000000) >> 32
        upperBits = (upperBits & 0x0000FFFF0000FFFF) << 16 | (upperBits & 0xFFFF0000FFFF0000) >> 16
        upperBits = (upperBits & 0x00FF00FF00FF00FF) << 08 | (upperBits & 0xFF00FF00FF00FF00) >> 08
        upperBits = (upperBits & 0x0F0F0F0F0F0F0F0F) << 04 | (upperBits & 0xF0F0F0F0F0F0F0F0) >> 04
        upperBits = (upperBits & 0x3333333333333333) << 02 | (upperBits & 0xCCCCCCCCCCCCCCCC) >> 02
        upperBits = (upperBits & 0x5555555555555555) << 01 | (upperBits & 0xAAAAAAAAAAAAAAAA) >> 01

        lowerBits = (lowerBits & 0x00000000FFFFFFFF) << 32 | (lowerBits & 0xFFFFFFFF00000000) >> 32
        lowerBits = (lowerBits & 0x0000FFFF0000FFFF) << 16 | (lowerBits & 0xFFFF0000FFFF0000) >> 16
        lowerBits = (lowerBits & 0x00FF00FF00FF00FF) << 08 | (lowerBits & 0xFF00FF00FF00FF00) >> 08
        lowerBits = (lowerBits & 0x0F0F0F0F0F0F0F0F) << 04 | (lowerBits & 0xF0F0F0F0F0F0F0F0) >> 04
        lowerBits = (lowerBits & 0x3333333333333333) << 02 | (lowerBits & 0xCCCCCCCCCCCCCCCC) >> 02
        lowerBits = (lowerBits & 0x5555555555555555) << 01 | (lowerBits & 0xAAAAAAAAAAAAAAAA) >> 01

        value =  Self.RawValue(lowerBits) << (self.rawValue.bitWidth / 2)
        value += Self.RawValue(upperBits)

    case 64:
        value = (value & 0x00000000FFFFFFFF) << 32 | (value & 0xFFFFFFFF00000000) >> 32
        value = (value & 0x0000FFFF0000FFFF) << 16 | (value & 0xFFFF0000FFFF0000) >> 16
        value = (value & 0x00FF00FF00FF00FF) << 08 | (value & 0xFF00FF00FF00FF00) >> 08
        value = (value & 0x0F0F0F0F0F0F0F0F) << 04 | (value & 0xF0F0F0F0F0F0F0F0) >> 04
        value = (value & 0x3333333333333333) << 02 | (value & 0xCCCCCCCCCCCCCCCC) >> 02
        value = (value & 0x5555555555555555) << 01 | (value & 0xAAAAAAAAAAAAAAAA) >> 01

    case 32:
        value = (value & 0xFFFFFFFF) << 32 | (value & 0x00000000) >> 32
        value = (value & 0x0000FFFF) << 16 | (value & 0xFFFF0000) >> 16
        value = (value & 0x00FF00FF) << 08 | (value & 0xFF00FF00) >> 08
        value = (value & 0x0F0F0F0F) << 04 | (value & 0xF0F0F0F0) >> 04
        value = (value & 0x33333333) << 02 | (value & 0xCCCCCCCC) >> 02
        value = (value & 0x55555555) << 01 | (value & 0xAAAAAAAA) >> 01

    case 16:
        value = (value & 0xFFFF) << 16 | (value & 0x0000) >> 16
        value = (value & 0x00FF) << 08 | (value & 0xFF00) >> 08
        value = (value & 0x0F0F) << 04 | (value & 0xF0F0) >> 04
        value = (value & 0x3333) << 02 | (value & 0xCCCC) >> 02
        value = (value & 0x5555) << 01 | (value & 0xAAAA) >> 01

    default:
        /* noop */
        break;
    }
    value >>= (Self.RawValue.bitWidth - (self.fileWidth * self.rankWidth))
    return value
  }
}
