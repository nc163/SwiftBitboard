import XCTest

final class BitboardTests: XCTestCase {

  //= init
  //
  //
  
  func test_init() throws {
    XCTAssertNoThrow(Bitboard2x2.init(rawValue: .zero))
    XCTAssertNoThrow(Bitboard3x3.init(rawValue: .zero))
    XCTAssertNoThrow(Bitboard4x4.init(rawValue: .zero))
    XCTAssertNoThrow(Bitboard5x5.init(rawValue: .zero))
    XCTAssertNoThrow(Bitboard6x6.init(rawValue: .zero))
    XCTAssertNoThrow(Bitboard7x7.init(rawValue: .zero))
    XCTAssertNoThrow(Bitboard8x8.init(rawValue: .zero))
    XCTAssertNoThrow(Bitboard9x9.init(rawValue: .zero))
    XCTAssertNoThrow(Bitboard10x10.init(rawValue: .zero))
    XCTAssertNoThrow(Bitboard11x11.init(rawValue: .zero))
    
    XCTAssertNoThrow(RandomAnyBitboard())
    
    print(Bitboard11x11.init(rawValue: .zero).description)
    print(Bitboard11x11.init(rawValue: .zero).debugDescription)
  }
  
  //= description
  //
  //
  
  func test_description() throws {
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
  
  func test_debugDescription() throws {
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
  
  //= property
  //
  //
  
  func test_property() throws {
    let bitboards = RandomAnyBitboard()
    
    // square
    bitboards.forEach { bitboard in
      if(bitboard.fileWidth == bitboard.rankWidth) {
        XCTAssertTrue(bitboard.square)
      } else {
        XCTAssertFalse(bitboard.square)
      }
    }
  }
  
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
  
  func test_bitscan() throws {
    RandomAnyBitboard().forEach { bitboard in
      
      bitboard.fileRange.forEach { file in
        XCTAssertNoThrow(bitboard.bitscan(file: file))
      }
      
      bitboard.rankRange.forEach { rank in
        XCTAssertNoThrow(bitboard.bitscan(rank: rank))
      }
      
      bitboard.fileRange.forEach { file in
        bitboard.rankRange.forEach { rank in
          XCTAssertNoThrow(bitboard.bitscan(file: file, rank: rank))
        }
      }
    }
  }
  
  //= bitset
  //
  //
  
}
