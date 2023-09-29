import SwiftBitboard
import XCTest

extension BitboardTests {
  
  func test_subscript_file_rank() throws {
    var bitboard = Bitboard9x9.init()
    bitboard.bitset(Coordinate.init(file: 1, rank:1))
    
    let element1 = bitboard[1, 1]
    XCTAssertTrue(element1)
    let element2 = bitboard[2, 2]
    XCTAssertFalse(element2)
  }
  
  func test_subscript_coordinate() throws {
    var bitboard = Bitboard9x9.init()
    let coordinate1 = Coordinate.init(file: 1, rank:1)
    bitboard.bitset(coordinate1)
    
    let element1 = bitboard[coordinate1]
    XCTAssertTrue(element1)
    
    let coordinate2 = Coordinate.init(file: 2, rank:2)
    let element2 = bitboard[coordinate2]
    XCTAssertFalse(element2)
  }
  
  func test_is_square() throws {
    let bitboard1 = Bitboard9x9.init()
    let bitboard2 = Bitboard9x5.init()

    XCTAssertTrue(bitboard1.is_square)
    XCTAssertFalse(bitboard2.is_square)
  }
  
  
  func test_iteration() throws {
    var bitboard = Bitboard9x9.init()
    let coordinates = [
      Coordinate.init(file: 1, rank:1),
//      Coordinate.init(file: 5, rank:5),
//      Coordinate.init(file: 8, rank:8)
    ]
    for coordinate in coordinates {
      print(coordinate)
      bitboard.bitset(coordinate)
    }
    
    bitboard.forEach { point in
      print("____ \(point)")
    }
    
//    XCTAssertTrue(bitboard1.is_square)
//    XCTAssertFalse(bitboard2.is_square)
  }
}
