@testable import SwiftBitboard
import XCTest

extension BitboardTests {
  
  func test_bit_manipulation() throws {
    var bitboard = Bitboard9x9.init()
    XCTAssertFalse( bitboard.bittest(for_x: 5, for_y: 5) )
    bitboard.bitset(for_x: 5, for_y: 5)
    XCTAssertTrue( bitboard.bittest(for_x: 5, for_y: 5) )
    bitboard.bitunset(for_x: 5, for_y: 5)
    XCTAssertFalse( bitboard.bittest(for_x: 5, for_y: 5) )
    
    let point: Coordinate = .init(x: 1, y: 8)
    bitboard.bitset(point)
    XCTAssertTrue( bitboard.bittest(point) )
    bitboard.bitunset(point)
    XCTAssertFalse( bitboard.bittest(point) )
  }
  
  func test_bit_scaning() throws {
    var bitboard = Bitboard9x9.init()
    var coordinates: [Coordinate] = .init()
    coordinates.append(.init(x: 1, y:1))
    coordinates.append(.init(x: 2, y:8))
    coordinates.append(.init(x: 5, y:5))
    coordinates.append(.init(x: 8, y:8))
    
    for coordinate in coordinates {
      bitboard.bitset(coordinate)
    }
    
    let results = bitboard.bitscan()
    
    for result in results {
      XCTAssertTrue( coordinates.contains(result), "\(result)" )
    }
  }
  
  func test_bit_or() throws {
    var coordinates: [Coordinate] = .init()
    coordinates.append(.init(x: 1, y:1))
    coordinates.append(.init(x: 8, y:8))
    
    var bitboard1 = Bitboard9x9.init()
    var bitboard2 = Bitboard9x9.init()
    bitboard1.bitset(coordinates.first!)
    bitboard2.bitset(coordinates.last!)
    bitboard1 |= bitboard2
    
    let result = bitboard1.bitscan()
    for coordinate in coordinates {
      XCTAssertTrue(result.contains(coordinate))
    }
  }
}
