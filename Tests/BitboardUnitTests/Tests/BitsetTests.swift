import XCTest
import Bitboard

final class BitsetTests: XCTestCase {

  //= bitset
  //
  //

  func test_bitset() throws {
    
    // 
    
    // random pattern
    XCTAssertNoThrow(bitset_random_test( Bitboard<UInt8>.random()   ))
//    XCTAssertNoThrow(bitset_random_test( Bitboard<UInt16>.random()  ))
//    XCTAssertNoThrow(bitset_random_test( Bitboard<UInt32>.random()  ))
//    XCTAssertNoThrow(bitset_random_test( Bitboard<UInt128>.random() ))
  }
}
