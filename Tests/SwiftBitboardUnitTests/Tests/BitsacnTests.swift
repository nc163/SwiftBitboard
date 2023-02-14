import XCTest
import SwiftBitboard

final class BitsacnTests: XCTestCase {

  //= bitscan
  //
  //
  
  func test_bitscan() throws {
    // unit test
    do {
      let bitboard: Bitboard<UInt8> = .init(rawValue: 63, fileWidth: 2, rankWidth: 3)
      XCTAssertTrue(bitboard.bitscan(file: 1, rank: 1))
      XCTAssertTrue(bitboard.bitscan(file: 1, rank: 2))
      XCTAssertTrue(bitboard.bitscan(file: 2, rank: 1))
      XCTAssertTrue(bitboard.bitscan(file: 2, rank: 2))
      XCTAssertTrue(bitboard.bitscan(file: 3, rank: 1))
      XCTAssertTrue(bitboard.bitscan(file: 3, rank: 2))
      print(bitboard.debugDescription)
    }
  }

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
