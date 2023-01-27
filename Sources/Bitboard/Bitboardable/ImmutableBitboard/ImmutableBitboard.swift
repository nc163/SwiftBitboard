/** 変更不可能なBitboard protocol
 *
 */
public protocol ImmutableBitboard: Bitboardable {

  var fileWidth: Int { get }
  var rankWidth: Int { get }
  var rawValue: RawValue { get }

  func clone() -> Self
}

extension ImmutableBitboard {

  internal var fill: RawValue {
    let _rawValue: RawValue = RawValue.max
    return _rawValue << (RawValue.bitWidth - (self.fileWidth * self.rankWidth))
  }
}
