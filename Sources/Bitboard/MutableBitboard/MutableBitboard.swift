/** 変更可能なBitboard protocol
 *
 */
public protocol MutableBitboard: ImmutableBitboard {
  var fileWidth: Int { get set }
  var rankWidth: Int { get set }
  var rawValue: RawValue { get set }
}
