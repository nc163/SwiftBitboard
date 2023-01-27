/** 変更不可能なBitboard protocol
 *
 */
public protocol ImmutableBitboard: Bitboardable {
  var fileWidth: Int { get }
  var rankWidth: Int { get }
  var rawValue: RawValue { get }
}
