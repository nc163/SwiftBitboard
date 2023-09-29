import Foundation

extension Bitboardable {
  
  /// RawValue.bitwidth が 2^n かどうか
  var isBitWidthPowerOfTwo: Bool {
    RawValue.bitWidth.nonzeroBitCount == 1
  }
  
}
