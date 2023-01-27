
public extension ImmutableBitboard {

    ///
    var popcount: Int {
        return self.rawValue.nonzeroBitCount
    }
}
