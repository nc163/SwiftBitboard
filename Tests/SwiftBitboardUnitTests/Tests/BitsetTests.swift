import XCTest
import SwiftBitboard

final class BitsetTests: XCTestCase {

  //= bitset
  //
  //

  func test_bitset() throws {
    
    // unit test
    do {
      var bitboard: Bitboard<UInt8> = .init(rawValue: 0b11_11_11, fileWidth: 2, rankWidth: 3)
      
      XCTAssertTrue(bitboard.bitscan(file: 2, rank: 2), bitboard.debugDescription)
      XCTAssertNoThrow(bitboard.bitunset(file: 2, rank: 2))
      XCTAssertFalse(bitboard.bitscan(file: 2, rank: 2), bitboard.debugDescription)
      XCTAssertNoThrow(bitboard.bitset(file: 2, rank: 2))
      XCTAssertTrue(bitboard.bitscan(file: 2, rank: 2), bitboard.debugDescription)
    }
    
    // unit test
    do {
      var bitboard: Bitboard<UInt8> = .init(fileWidth: 2, rankWidth: 3)
      XCTAssertFalse(bitboard.bitscan())
      
      // set
      XCTAssertNoThrow(bitboard.bitset(file: 1, rank: 1))
      XCTAssertTrue(bitboard.bitscan(file: 1, rank: 1), bitboard.debugDescription)
      
      XCTAssertNoThrow(bitboard.bitset(file: 2, rank: 1))
      XCTAssertTrue(bitboard.bitscan(file: 2, rank: 1), bitboard.debugDescription)
      
      XCTAssertNoThrow(bitboard.bitset(file: 1, rank: 2))
      XCTAssertTrue(bitboard.bitscan(file: 1, rank: 2), bitboard.debugDescription)
      
      XCTAssertNoThrow(bitboard.bitset(file: 2, rank: 2))
      XCTAssertTrue(bitboard.bitscan(file: 2, rank: 2), bitboard.debugDescription)
      
      XCTAssertNoThrow(bitboard.bitset(file: 1, rank: 3))
      XCTAssertTrue(bitboard.bitscan(file: 1, rank: 3), bitboard.debugDescription)
      
      XCTAssertNoThrow(bitboard.bitset(file: 2, rank: 3))
      XCTAssertTrue(bitboard.bitscan(file: 2, rank: 3), bitboard.debugDescription)
      
      
      // unset
      XCTAssertNoThrow(bitboard.bitunset(file: 1, rank: 1))
      XCTAssertFalse(bitboard.bitscan(file: 1, rank: 1), bitboard.debugDescription)
      
      XCTAssertNoThrow(bitboard.bitunset(file: 2, rank: 1))
      XCTAssertFalse(bitboard.bitscan(file: 2, rank: 1), bitboard.debugDescription)
      
      XCTAssertNoThrow(bitboard.bitunset(file: 1, rank: 2))
      XCTAssertFalse(bitboard.bitscan(file: 1, rank: 2), bitboard.debugDescription)
      
      XCTAssertNoThrow(bitboard.bitunset(file: 2, rank: 2))
      XCTAssertFalse(bitboard.bitscan(file: 2, rank: 2), bitboard.debugDescription)
      
      XCTAssertNoThrow(bitboard.bitunset(file: 1, rank: 3))
      XCTAssertFalse(bitboard.bitscan(file: 1, rank: 3), bitboard.debugDescription)
      
      XCTAssertNoThrow(bitboard.bitunset(file: 2, rank: 3))
      XCTAssertFalse(bitboard.bitscan(file: 2, rank: 3), bitboard.debugDescription)
    }

    // all pattern
    do {
      do {
        let bitboard: Bitboard<UInt8>  = .init(fileWidth: 2, rankWidth: 3)
        XCTAssertNoThrow(bitset_all_pattern_test( bitboard ))
      }
      
      do {
        let bitboard: Bitboard<UInt8>  = .init(rawValue: 0b11_11_11, fileWidth: 2, rankWidth: 3)
        XCTAssertNoThrow(bitset_all_pattern_test( bitboard ))
      }
      
      do {
        let bitboard: Bitboard<UInt16> = .init(fileWidth: 4, rankWidth: 4)
        XCTAssertNoThrow(bitset_all_pattern_test( bitboard ))
      }
      
      do {
        let bitboard: Bitboard<UInt16> = .init(rawValue: 0b1111_1111_1111_1111, fileWidth: 4, rankWidth: 4)
        XCTAssertNoThrow(bitset_all_pattern_test( bitboard ))
      }
      
      do {
        XCTAssertNoThrow(bitset_all_pattern_test( Bitboard<UInt8>.random()))
        XCTAssertNoThrow(bitset_all_pattern_test( Bitboard<UInt16>.random()  ))
        XCTAssertNoThrow(bitset_all_pattern_test( Bitboard<UInt32>.random()  ))
        XCTAssertNoThrow(bitset_all_pattern_test( Bitboard<UInt128>.random() ))
      }
    }
  }
}
