import XCTest
@testable import Bitboard
import Foundation

fileprivate let R: Bitboard8x8.RawValue = 0b00100010_00010010_00001010_00001110_00010010_00100010_00100010_00011110

extension BitrotateTests {

  func rotate_0_test() {
    var bitboard: Bitboard8x8 = Bitboard8x8.init(rawValue: R)
    let example_8x8_R = """
 ABCDEFGH
1-****---
2-*---*--
3-*---*--
4-*--*---
5-***----
6-*-*----
7-*--*---
8-*---*--
"""
    XCTAssertEqual(bitboard.debugDescription, example_8x8_R)

    bitboard.bitrotate(digree: .deg0)
    XCTAssertEqual(bitboard.debugDescription, example_8x8_R)
  }

  func rotate_90_test() {
    var bitboard: Bitboard8x8 = Bitboard8x8.init(rawValue: R)
    let example_8x8_R = """
 ABCDEFGH
1-****---
2-*---*--
3-*---*--
4-*--*---
5-***----
6-*-*----
7-*--*---
8-*---*--
"""
    XCTAssertEqual(bitboard.debugDescription, example_8x8_R)

    bitboard.bitrotate(digree: .deg90)
    let example_8x8_Rr90 = """
 ABCDEFGH
1--------
2********
3---*---*
4--**---*
5-*--*--*
6*----**-
7--------
8--------
"""
    XCTAssertEqual(bitboard.debugDescription, example_8x8_Rr90)

    bitboard.bitrotate(digree: .deg90)
    let example_8x8_Rr180 = """
 ABCDEFGH
1--*---*-
2---*--*-
3----*-*-
4----***-
5---*--*-
6--*---*-
7--*---*-
8---****-
"""
    XCTAssertEqual(bitboard.debugDescription, example_8x8_Rr180)
  }


  func rotate_180_test() {
    var bitboard: Bitboard8x8 = Bitboard8x8.init(rawValue: R)
    let example_8x8_R = """
 ABCDEFGH
1-****---
2-*---*--
3-*---*--
4-*--*---
5-***----
6-*-*----
7-*--*---
8-*---*--
"""
    XCTAssertEqual(bitboard.debugDescription, example_8x8_R)

    bitboard.bitrotate(digree: .deg180)
    let example_8x8_Rr180 = """
 ABCDEFGH
1--*---*-
2---*--*-
3----*-*-
4----***-
5---*--*-
6--*---*-
7--*---*-
8---****-
"""
    XCTAssertEqual(bitboard.debugDescription, example_8x8_Rr180)
  }
}
