import XCTest

final class BitsetTests: XCTestCase {

  //= bitset
  //
  //

  func test_bitset() throws {
    let bitboards = RandomAnyBitboard()
    bitboards.forEach { bb in

      var bitboard = bb.clone();

      bitboard.fileRange.forEach { file in
        bitboard.rankRange.forEach { rank in
          let scan: Bool = bitboard.bitscan(file: file, rank: rank)

          if(scan) {
            XCTAssertNoThrow(bitboard.bitunset(file: file, rank: rank))
          } else {
            XCTAssertNoThrow(bitboard.bitset(file: file, rank: rank))
          }

          XCTAssertEqual(bitboard.bitscan(file: file, rank: rank), !scan, "\n \(file),\(rank)\n" + bitboard.debugDescription )

          if(scan) {
            XCTAssertNoThrow(bitboard.bitset(file: file, rank: rank))
          } else {
            XCTAssertNoThrow(bitboard.bitunset(file: file, rank: rank))
          }

          XCTAssertEqual(bitboard.bitscan(file: file, rank: rank), scan)
        }
      }

      bitboard.fileRange.forEach { file in
        XCTAssertNoThrow(bitboard.bitscan(file: file))
      }

      bitboard.rankRange.forEach { rank in
        XCTAssertNoThrow(bitboard.bitscan(rank: rank))
      }

    }
  }

}
