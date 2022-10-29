
public enum Digree: Int {
    case d0 = 0
    case d90 = 90
    case d180 = 180
    case d270 = 270
    case d360 = 360
}

public extension Bitboard {
    
    mutating func rotat(at: Digree) -> Bool {
        
        guard self.fileWidth == self.rankWidth else {
            return false
        }
        guard RawValue.bitWidth.nonzeroBitCount == 1 else {
            return false
        }
        
        let undo: RawValue = self.rawValue
        var rotate = at.rawValue
        let adjust_shift_bitwidth = (Self.RawValue.bitWidth - (self.fileWidth * self.rankWidth))
        for _ in 0..<(at.rawValue % Digree.d90.rawValue) {
            if(rotate_90() == false) {
                self.rawValue = undo
                return false
            }
            self.rawValue >>= adjust_shift_bitwidth
            rotate = rotate - Digree.d90.rawValue
        }
        return true
    }
}

///
fileprivate extension Bitboard {
    
    /// 分割倒置法
    /// - Parameters:
    ///   - rank: <#rank description#>
    ///   - file: <#file description#>
    /// - Returns: <#description#>
    mutating func rotate_90 () -> Bool {
        
        var value: RawValue = self.rawValue
        
        // 全bitswap
        // bitwidth が 2^n に対応
        var shift: Int = self.rawValue.bitWidth
        var divide_swap: RawValue = RawValue.max
        var upper_mask: RawValue = divide_swap >> ((shift / 2))
        var lower_mask: RawValue = divide_swap << ((shift / 2))
        repeat {
            let pattern: Int = (self.rawValue.bitWidth / shift)
//            print(String(format: "pattern = 0x%0d", pattern as! CVarArg ))
//            (1..<(self.rawValue.bitWidth / shift)).reduce(divide_swap) { partialResult, item in
//                partialResult = item >>
//            }
            
            
            
            
            let upper_mask: RawValue = divide_swap >> ((shift / 2))
            let lower_mask: RawValue = divide_swap << ((shift / 2))
            
            value = (value & upper_mask) << shift | (value & lower_mask) >> shift
            
            
            do {
                print("##====")
                print("upper_mask = \(upper_mask.binaryString)")
                print("lower_mask = \(lower_mask.binaryString)")
                print("")
                let s_mask_upperbit = String(format: "0x%0\(RawValue.bitWidth/8)X", upper_mask as! CVarArg ) 
                let s_mask_lowerbit = String(format: "0x%0\(RawValue.bitWidth/8)X", lower_mask as! CVarArg ) 
                let s_shift = String(format: "%02U", shift ) 
                print("(value & " + s_mask_upperbit + ") << " + s_shift + " | (value & " + s_mask_lowerbit + ") >> " + s_shift)
                print("")
            }
            
            shift = shift / 2;
        } while (shift > 1)
        
        self.rawValue = value
        return true
        
//        var lowerBits: RawValue = self.rawValue
//        switch self.rawValue.bitWidth {
//        case 128:
//            return false
//            let any = UInt128(self)
//            var upperBits: UInt64 = any.value.upperBits
//            var lowerBits: UInt64 = any.value.lowerBits
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
//        case 64:
//            // 分割統治
//            lowerBits = (lowerBits & 0x00000000FFFFFFFF) << 32 | (lowerBits & 0xFFFFFFFF00000000) >> 32
//            lowerBits = (lowerBits & 0x0000FFFF0000FFFF) << 16 | (lowerBits & 0xFFFF0000FFFF0000) >> 16
//            lowerBits = (lowerBits & 0x00FF00FF00FF00FF) << 08 | (lowerBits & 0xFF00FF00FF00FF00) >> 08
//            lowerBits = (lowerBits & 0x0F0F0F0F0F0F0F0F) << 04 | (lowerBits & 0xF0F0F0F0F0F0F0F0) >> 04
//            lowerBits = (lowerBits & 0x3333333333333333) << 02 | (lowerBits & 0xCCCCCCCCCCCCCCCC) >> 02
//            lowerBits = (lowerBits & 0x5555555555555555) << 01 | (lowerBits & 0xAAAAAAAAAAAAAAAA) >> 01
//            
//            self.rawValue = lowerBits
//            return true
//        case 32:
//            // 分割統治
//            lowerBits = (lowerBits & 0xFFFFFFFF) << 32 | (lowerBits & 0x00000000) >> 32
//            lowerBits = (lowerBits & 0x0000FFFF) << 16 | (lowerBits & 0xFFFF0000) >> 16
//            lowerBits = (lowerBits & 0x00FF00FF) << 08 | (lowerBits & 0xFF00FF00) >> 08
//            lowerBits = (lowerBits & 0x0F0F0F0F) << 04 | (lowerBits & 0xF0F0F0F0) >> 04
//            lowerBits = (lowerBits & 0x33333333) << 02 | (lowerBits & 0xCCCCCCCC) >> 02
//            lowerBits = (lowerBits & 0x55555555) << 01 | (lowerBits & 0xAAAAAAAA) >> 01
//            
//            self.rawValue = lowerBits
//            return true
//        case 16:
//            // 分割統治
//            lowerBits = (lowerBits & 0xFFFF) << 16 | (lowerBits & 0x0000) >> 16
//            lowerBits = (lowerBits & 0x00FF) << 08 | (lowerBits & 0xFF00) >> 08
//            lowerBits = (lowerBits & 0x0F0F) << 04 | (lowerBits & 0xF0F0) >> 04
//            lowerBits = (lowerBits & 0x3333) << 02 | (lowerBits & 0xCCCC) >> 02
//            lowerBits = (lowerBits & 0x5555) << 01 | (lowerBits & 0xAAAA) >> 01
//            
//            self.rawValue = lowerBits
//            return true
//        default:
//            return false
//        }
    }
}
