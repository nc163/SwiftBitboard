@testable import SwiftBitboard
import XCTest

extension BitboardTests {
  
  func test_subscript_file_rank() throws {
    var bitboard = Bitboard9x9.init()
    bitboard.bitset(Coordinate.init(x: 1, y:1))
    
    let element1 = bitboard[1, 1]
    XCTAssertTrue(element1)
    let element2 = bitboard[2, 2]
    XCTAssertFalse(element2)
  }
  
  func test_subscript_coordinate() throws {
    var bitboard = Bitboard9x9.init()
    let coordinate1 = Coordinate.init(x: 1, y:1)
    bitboard.bitset(coordinate1)
    
    let element1 = bitboard[coordinate1]
    XCTAssertTrue(element1)
    
    let coordinate2 = Coordinate.init(x: 2, y:2)
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
      Coordinate.init(x: 0, y:0),
      Coordinate.init(x: 8, y:8)
    ]
    for coordinate in coordinates {
      bitboard.bitset(coordinate)
    }
    
    bitboard.makeIterator().enumerated().filter { $0.element == true }.forEach { value in
      let coordinate: Coordinate = Bitboard9x9.index_to_coordinate(index: value.offset)
      XCTAssertTrue(coordinates.contains(coordinate))
      XCTAssertTrue(value.element)
    }
  }
}
