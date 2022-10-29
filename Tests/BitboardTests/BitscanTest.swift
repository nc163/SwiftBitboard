import XCTest

final class BitscanTest: XCTestCase {

    func testExample() throws {
        XCTAssertFalse(bb_8x8_empty_128.bitscan(), bb_8x8_empty_128.description)
        XCTAssertFalse(bb_8x8_empty_128.bitscan(file: 5), bb_8x8_empty_128.description)
        XCTAssertFalse(bb_8x8_empty_128.bitscan(rank: 5), bb_8x8_empty_128.description)
        XCTAssertFalse(bb_8x8_empty_128.bitscan(file: 5, rank: 5), bb_8x8_empty_128.description)
       
        XCTAssertTrue(bb_8x8_R_128.bitscan(), bb_8x8_R_128.description)
        XCTAssertTrue(bb_8x8_R_128.bitscan(file: 5), bb_8x8_R_128.description)
        XCTAssertTrue(bb_8x8_R_128.bitscan(rank: 5), bb_8x8_R_128.description)
        XCTAssertTrue(bb_8x8_R_128.bitscan(file: 5, rank: 5), bb_8x8_R_128.description)
        
        XCTAssertTrue(bb_8x8_bit1o1_64.bitscan(file: 1), bb_8x8_bit1o1_64.description)
        XCTAssertTrue(bb_8x8_bit1o1_64.bitscan(rank: 1), bb_8x8_bit1o1_64.description)
        XCTAssertTrue(bb_8x8_bit1o1_64.bitscan(file: 1, rank: 1), bb_8x8_bit1o1_64.description)
        XCTAssertTrue(bb_8x8_bit1o1_128.bitscan(file: 1, rank: 1), bb_8x8_bit1o1_128.description)
        
        XCTAssertTrue(bb_8x8_bit8o8_64.bitscan(file: 8), bb_8x8_bit8o8_64.description)
        XCTAssertTrue(bb_8x8_bit8o8_64.bitscan(rank: 8), bb_8x8_bit8o8_64.description)
        XCTAssertTrue(bb_8x8_bit8o8_64.bitscan(file: 8, rank: 8), bb_8x8_bit8o8_64.description)
        XCTAssertTrue(bb_8x8_bit8o8_128.bitscan(file: 8, rank: 8), bb_8x8_bit8o8_128.description)
       
    }
}
