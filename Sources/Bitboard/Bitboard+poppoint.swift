
public extension Bitboard {
    
    /// 立ち上がりビットの位置返す
    func popbits() -> [Int] {
        var swapped: RawValue = self.rawValue.bitSwapped
        var popbits: Array<Int> = .init()
        
        repeat {
            let zero_bit_count = swapped.trailingZeroBitCount
            let swapped_pop_bit = (zero_bit_count + 1)
            swapped = swapped >> swapped_pop_bit
            
            popbits.append(swapped_pop_bit)
        } while( swapped == 0 )
        
        return popbits
    }
}
