import XCTest
import Bitboard

extension BitsetTests {
  
  
  func bitset_random_test<T: Bitboard.RawValueType>(_ bb: Bitboard<T>) {
      var bitboard = bb.clone();

      bitboard.fileRange.forEach { file in
        bitboard.rankRange.forEach { rank in
          let scan: Bool = bitboard.bitscan(file: file, rank: rank)

          if(scan) {
            XCTAssertNoThrow(bitboard.bitunset(file: file, rank: rank))
            
            XCTAssertEqual(bitboard.bitscan(file: file, rank: rank), false)
            
            XCTAssertNoThrow(bitboard.bitset(file: file, rank: rank))
            
            XCTAssertEqual(bitboard.bitscan(file: file, rank: rank), true)
          } else {
            XCTAssertNoThrow(bitboard.bitset(file: file, rank: rank))
            
            XCTAssertEqual(bitboard.bitscan(file: file, rank: rank), true)
            
            XCTAssertNoThrow(bitboard.bitunset(file: file, rank: rank))
              
            XCTAssertEqual(bitboard.bitscan(file: file, rank: rank), false)
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
