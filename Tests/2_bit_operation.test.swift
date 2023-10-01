@testable import SwiftBitboard
import XCTest

extension BitboardTests {
  
  func test_bit_manipulation() throws {
    var bitboard = Bitboard9x9.init()
    XCTAssertFalse( bitboard.bittest(forFile: 5, forRank: 5) )
    bitboard.bitset(forFile: 5, forRank: 5)
    XCTAssertTrue( bitboard.bittest(forFile: 5, forRank: 5) )
    bitboard.bitunset(forFile: 5, forRank: 5)
    XCTAssertFalse( bitboard.bittest(forFile: 5, forRank: 5) )
    
    let point: Coordinate = .init(file: 1, rank: 8)
    bitboard.bitset(point)
    XCTAssertTrue( bitboard.bittest(point) )
    bitboard.bitunset(point)
    XCTAssertFalse( bitboard.bittest(point) )
  }
  
  func test_bit_scaning() throws {
    var bitboard = Bitboard9x9.init()
    var coordinates: [Coordinate] = .init()
    coordinates.append(.init(file: 1, rank:1))
    coordinates.append(.init(file: 2, rank:8))
    coordinates.append(.init(file: 5, rank:5))
    coordinates.append(.init(file: 8, rank:8))
    
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
    coordinates.append(.init(file: 1, rank:1))
    coordinates.append(.init(file: 8, rank:8))
    
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
