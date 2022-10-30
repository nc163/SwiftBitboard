
public extension Bitboard {
    
    mutating func rotat180() -> Bool {
        
        guard self.fileWidth == self.rankWidth else {
            return false
        }
        // bit幅が2^n でないとダメ
        guard RawValue.bitWidth.nonzeroBitCount == 1 else {
            return false
        }
        
        let undo: RawValue = self.rawValue
        if(rotate_180() == false) {
            self.rawValue = undo
            return false
        }
        return true
    }
}

fileprivate extension Bitboard {
        
    mutating func rotate_180 () -> Bool {
        var value: RawValue = self.rawValue
        switch self.rawValue.bitWidth {
//        case 128:
//            return false
//            var upperBits: UInt64 = value.upperBits
//            var lowerBits: UInt64 = value.lowerBits
//
//            // 分割統治
//            upperBits = (upperBits & 0x00000000FFFFFFFF) << 32 | (upperBits & 0xFFFFFFFF00000000) >> 32
//            upperBits = (upperBits & 0x0000FFFF0000FFFF) << 16 | (upperBits & 0xFFFF0000FFFF0000) >> 16
//            upperBits = (upperBits & 0x00FF00FF00FF00FF) << 08 | (upperBits & 0xFF00FF00FF00FF00) >> 08
//            upperBits = (upperBits & 0x0F0F0F0F0F0F0F0F) << 04 | (upperBits & 0xF0F0F0F0F0F0F0F0) >> 04
//            upperBits = (upperBits & 0x3333333333333333) << 02 | (upperBits & 0xCCCCCCCCCCCCCCCC) >> 02
//            upperBits = (upperBits & 0x5555555555555555) << 01 | (upperBits & 0xAAAAAAAAAAAAAAAA) >> 01
//
//            lowerBits = (lowerBits & 0x00000000FFFFFFFF) << 32 | (lowerBits & 0xFFFFFFFF00000000) >> 32
//            lowerBits = (lowerBits & 0x0000FFFF0000FFFF) << 16 | (lowerBits & 0xFFFF0000FFFF0000) >> 16
//            lowerBits = (lowerBits & 0x00FF00FF00FF00FF) << 08 | (lowerBits & 0xFF00FF00FF00FF00) >> 08
//            lowerBits = (lowerBits & 0x0F0F0F0F0F0F0F0F) << 04 | (lowerBits & 0xF0F0F0F0F0F0F0F0) >> 04
//            lowerBits = (lowerBits & 0x3333333333333333) << 02 | (lowerBits & 0xCCCCCCCCCCCCCCCC) >> 02
//            lowerBits = (lowerBits & 0x5555555555555555) << 01 | (lowerBits & 0xAAAAAAAAAAAAAAAA) >> 01
//
//            let t = UInt128(upperBits: upperBits, lowerBits: lowerBits)
//            self.rawValue
//            return Self(t)
//            
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
            return false
        }
        value >>= (Self.RawValue.bitWidth - (self.fileWidth * self.rankWidth))
        self.rawValue = value
        return true
    }
}
