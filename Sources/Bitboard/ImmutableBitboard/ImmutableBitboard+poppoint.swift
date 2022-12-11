
public extension ImmutableBitboard {
    
    /// 
    mutating func popbits() -> [Self.Point] {
        var swapped: RawValue = self.rawValue.bitSwapped
        var popbits: Array<Self.Point> = .init()
        
        repeat {
            let zero_bit_count = swapped.trailingZeroBitCount
            let swapped_pop_bit = (zero_bit_count + 1)
            swapped = swapped >> swapped_pop_bit
            
            popbits.append( bit_to_point(bit: swapped_pop_bit) )
        } while( swapped == 0 )
        
        return popbits
    }
}
