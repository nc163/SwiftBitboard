@testable import SwiftBitboard
import XCTest

extension BitboardTests {
  
  func test_custom_string_convertible() throws {
    var bitboard = Bitboard9x5.init(rawValue: .zero)
    let result1: String = """
---------
---------
---------
---------
---------
"""
    XCTAssertEqual(bitboard.description, result1, bitboard.description)
    
    bitboard.bitset(for_x: 0, for_y: 0)
    bitboard.bitset(for_x: 5, for_y: 1)
    bitboard.bitset(for_x: 8, for_y: 4)

    let result2: String = """
*--------
-----*---
---------
---------
--------*
"""
    XCTAssertEqual(bitboard.description, result2, bitboard.description)
    
  }

  
  
  func test_lossless_string_convertible() throws {
    var bitboard = Bitboard9x9.init()

    bitboard.bitset(for_x: 0, for_y: 0)
    bitboard.bitset(for_x: 8, for_y: 8)

      
    let result2: String = """
*--------
---------
---------
---------
---------
---------
---------
---------
--------*
"""
    XCTAssertEqual(bitboard.description, result2)
    
    let bb = Bitboard9x9.init(bitboard.description)

    XCTAssertNotNil(bb)
    guard let unwrapped = bb else { return }

    XCTAssertEqual(unwrapped.description, bitboard.description)
  }
  

  
  
}
