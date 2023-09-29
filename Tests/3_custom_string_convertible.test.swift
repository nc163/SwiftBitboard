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
    XCTAssertEqual(bitboard.description, result1)
    
    if Bitboard9x5.Configuration.isZeroBasedIndexing {
      bitboard.bitset(forFile: 0, forRank: 0)
      bitboard.bitset(forFile: 5, forRank: 1)
      bitboard.bitset(forFile: 8, forRank: 4)
    } else {
      bitboard.bitset(forFile: 1, forRank: 1)
      bitboard.bitset(forFile: 6, forRank: 2)
      bitboard.bitset(forFile: 9, forRank: 5)
    }
    let result2: String = """
*--------
-----*---
---------
---------
--------*
"""
    XCTAssertEqual(bitboard.description, result2)
    
  }

  
  
  func test_lossless_string_convertible() throws {
    var bitboard = Bitboard9x9.init()

    if Bitboard9x9.Configuration.isZeroBasedIndexing {
      bitboard.bitset(forFile: 0, forRank: 0)
      bitboard.bitset(forFile: 8, forRank: 8)
    } else {
      bitboard.bitset(forFile: 1, forRank: 1)
      bitboard.bitset(forFile: 9, forRank: 9)
    }
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
