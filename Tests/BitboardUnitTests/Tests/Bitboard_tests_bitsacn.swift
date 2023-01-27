import XCTest

final class BitsacnTests: XCTestCase {

  //= bitscan
  //
  //

  func test_bitscan_all_false() throws {
    EmptyBitboards().forEach { bitboard in

      bitboard.fileRange.forEach { file in
        XCTAssertFalse(bitboard.bitscan(file: file))
      }

      bitboard.rankRange.forEach { rank in
        XCTAssertFalse(bitboard.bitscan(rank: rank))
      }

      bitboard.fileRange.forEach { file in
        bitboard.rankRange.forEach { rank in
          XCTAssertFalse(bitboard.bitscan(file: file, rank: rank))
        }
      }
    }
  }

  func test_bitscan_all_true() throws {
    FillBitboards().forEach { bitboard in

      bitboard.fileRange.forEach { file in
        XCTAssertTrue(bitboard.bitscan(file: file))
      }

      bitboard.rankRange.forEach { rank in
        XCTAssertTrue(bitboard.bitscan(rank: rank))
      }

      bitboard.fileRange.forEach { file in
        bitboard.rankRange.forEach { rank in
          XCTAssertTrue(bitboard.bitscan(file: file, rank: rank))
        }
      }
    }
  }
}
