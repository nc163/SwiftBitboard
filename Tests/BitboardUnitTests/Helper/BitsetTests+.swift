import XCTest
@testable import Bitboard
import Foundation

extension BitsetTests {
  
  
  func bitset_all_pattern_test<T: Bitboard.RawValueType>(_ bb: Bitboard<T>) {
      var bitboard = bb.clone();

      bitboard.fileRange.forEach { file in
        bitboard.rankRange.forEach { rank in
          
          let scan: Bool = bitboard.bitscan(file: file, rank: rank)

          if(scan) {
            XCTAssertNoThrow(bitboard.bitunset(file: file, rank: rank))
            
            XCTAssertFalse(bitboard.bitscan(file: file, rank: rank), "\(bitboard.rawValue.binaryString) \n (\(file), \(rank)) \n \(bitboard.debugDescription)")
            
            XCTAssertNoThrow(bitboard.bitset(file: file, rank: rank))
            
            XCTAssertTrue(bitboard.bitscan(file: file, rank: rank), "\(bitboard.rawValue.binaryString) \n (\(file), \(rank)) \n \(bitboard.debugDescription)")
          } else {
            XCTAssertNoThrow(bitboard.bitset(file: file, rank: rank))
            
            XCTAssertTrue(bitboard.bitscan(file: file, rank: rank), "\(bitboard.rawValue.binaryString) \n (\(file), \(rank)) \n \(bitboard.debugDescription)")
            
            XCTAssertNoThrow(bitboard.bitunset(file: file, rank: rank))
              
            XCTAssertFalse(bitboard.bitscan(file: file, rank: rank), "\(bitboard.rawValue.binaryString) \n (\(file), \(rank)) \n \(bitboard.debugDescription)")
          }

          XCTAssertEqual(bb.rawValue, bitboard.rawValue)
        }
      }

//      XCTAssertEqual(bitboard.rawValue, bb.rawValue)

      bitboard.fileRange.forEach { file in
        XCTAssertNoThrow(bitboard.bitscan(file: file))
      }

      bitboard.rankRange.forEach { rank in
        XCTAssertNoThrow(bitboard.bitscan(rank: rank))
      }
  }

}
