import SwiftBitboard
import Foundation

extension Bitboard {
  
  static func random() -> Self {    
    return self.init(rawValue: RawValue.random(in: 0...RawValue.max))
  }
}
