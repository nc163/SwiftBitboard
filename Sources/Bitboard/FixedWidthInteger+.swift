extension FixedWidthInteger {
    
    /// bit swap
    /// e.g) 0x01010_0011_1100 --swap-> 0x0011_1100_0101
    /// https://stackoverflow.com/questions/60594125/is-there-a-way-to-reverse-the-bit-order-in-uint64
    var bitSwapped: Self {
        var v = self
        var s = Self(v.bitWidth)
        precondition(s.nonzeroBitCount == 1, "Bit width must be a power of two")
        var mask = ~Self(0)
        repeat  {
            s = s >> 1
            mask ^= mask << s
            v = ((v >> s) & mask) | ((v << s) & ~mask)
        } while s > 1
        return v
    }
    
    ///
    /// https://developer.apple.com/documentation/swift/fixedwidthinteger
    var binaryString: String {
        var result: [String] = []
        for i in 0..<(Self.bitWidth / 8) {
            let byte = UInt8(truncatingIfNeeded: self >> (i * 8))
            let byteString = String(byte, radix: 2)
            let padding = String(repeating: "0", count: 8 - byteString.count)
            result.append(padding + byteString)
        }
        return "0b" + result.reversed().joined(separator: "_")
    }
}
