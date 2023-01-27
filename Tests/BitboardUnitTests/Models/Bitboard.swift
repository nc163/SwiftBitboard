import Bitboard
import Foundation

extension Bitboard {
  
  static func random() -> Self {
    let max: Int = Int(floor(sqrt(Double(RawValue.bitWidth))))
    
    return self.init(rawValue: RawValue.random(in: 0...RawValue.max), fileWidth: Int.random(in: 2...max), rankWidth: Int.random(in: 2...max))
  }
}
