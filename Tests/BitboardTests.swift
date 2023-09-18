import XCTest

final class BitboardTests: XCTestCase {

  //= description
  //
  //
  
  func test_11x11_description() throws {
    let result: String = """
-----------
-----------
-----------
-----------
-----------
-----------
-----------
-----------
-----------
-----------
-----------
"""
    
    XCTAssertEqual(Bitboard11x11.init(rawValue: .zero).description, result)
  }
  
  //= debugDescription
  //
  //
  
  func test_11x11_debugDescription() throws {
    let result: String = """
  ABCDEFGHIJK
01-----------
02-----------
03-----------
04-----------
05-----------
06-----------
07-----------
08-----------
09-----------
10-----------
11-----------
"""
    
    XCTAssertEqual(Bitboard11x11.init(rawValue: .zero).debugDescription, result)
  }
  
  func test_10x11_debugDescription() throws {
    let result: String = """
  ABCDEFGHIJ
01----------
02----------
03----------
04----------
05----------
06----------
07----------
08----------
09----------
10----------
11----------
"""
    
    XCTAssertEqual(Bitboard10x11.init(rawValue: .zero).debugDescription, result)
  }
  
//  //= property
//  //
//  //
//  
//  func test_property() throws {
//    let bitboards = RandomBitboards()
//    
//    // square
//    bitboards.forEach { bitboard in
//      if(bitboard.fileWidth == bitboard.rankWidth) {
//        XCTAssertTrue(bitboard.square)
//      } else {
//        XCTAssertFalse(bitboard.square)
//      }
//    }
//  }
//  
//  //= bitscan
//  //
//  //
//  
//  func test_bitscan_all_false() throws {
//    EmptyBitboards().forEach { bitboard in
//      
//      bitboard.fileRange.forEach { file in
//        XCTAssertFalse(bitboard.bitscan(file: file))
//      }
//      
//      bitboard.rankRange.forEach { rank in
//        XCTAssertFalse(bitboard.bitscan(rank: rank))
//      }
//      
//      bitboard.fileRange.forEach { file in
//        bitboard.rankRange.forEach { rank in
//          XCTAssertFalse(bitboard.bitscan(file: file, rank: rank))
//        }
//      }
//    }
//  }
//
//  func test_bitscan_all_true() throws {
//    FillBitboards().forEach { bitboard in
//      
//      bitboard.fileRange.forEach { file in
//        XCTAssertTrue(bitboard.bitscan(file: file))
//      }
//      
//      bitboard.rankRange.forEach { rank in
//        XCTAssertTrue(bitboard.bitscan(rank: rank))
//      }
//      
//      bitboard.fileRange.forEach { file in
//        bitboard.rankRange.forEach { rank in
//          XCTAssertTrue(bitboard.bitscan(file: file, rank: rank))
//        }
//      }
//    }
//  }
//  
//  func test_bitscan() throws {
//    RandomBitboards().forEach { bitboard in
//      
//      bitboard.fileRange.forEach { file in
//        XCTAssertNoThrow(bitboard.bitscan(file: file))
//      }
//      
//      bitboard.rankRange.forEach { rank in
//        XCTAssertNoThrow(bitboard.bitscan(rank: rank))
//      }
//      
//      bitboard.fileRange.forEach { file in
//        bitboard.rankRange.forEach { rank in
//          XCTAssertNoThrow(bitboard.bitscan(file: file, rank: rank))
//        }
//      }
//    }
//  }
//  
//  //= bitset
//  //
//  //
//  
}
