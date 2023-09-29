@testable import SwiftBitboard
import XCTest

extension BitboardTests {
  
  func test_default_initialization() throws {
    let _ = Bitboard11x11.init()
    let _ = Bitboard2x5.init()
  }
  
  func test_initialization_with_valid_parameters() throws {
    let _ = Bitboard11x11.init(rawValue: .zero)
    let _ = Bitboard2x5.init(rawValue: .max)
  }

}
