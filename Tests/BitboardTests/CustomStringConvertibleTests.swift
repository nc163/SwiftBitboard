import XCTest

final class CustomStringConvertibleTests: XCTestCase {
    
    func test_customStringConvertible() throws {
        XCTAssertEqual(bb_5x5_empty_32.description, example_5x5_empty, bb_5x5_empty_32.description)
        XCTAssertEqual(bb_5x5_empty_64.description, example_5x5_empty, bb_5x5_empty_64.description)
        XCTAssertEqual(bb_5x5_empty_128.description, example_5x5_empty, bb_5x5_empty_128.description)
        
        XCTAssertEqual(bb_8x8_empty_64.description, example_8x8_empty, bb_8x8_empty_64.description)
        XCTAssertEqual(bb_8x8_empty_128.description, example_8x8_empty, bb_8x8_empty_128.description)
        
        XCTAssertEqual(bb_8x8_R_64.description, example_8x8_R, bb_8x8_R_64.description)
        XCTAssertEqual(bb_8x8_R_128.description, example_8x8_R, bb_8x8_R_128.description)
        
        XCTAssertEqual(bb_8x8_bit1o1_64.description, example_8x8_bit1o1, bb_8x8_bit1o1_64.description)
        XCTAssertEqual(bb_8x8_bit1o1_128.description, example_8x8_bit1o1, bb_8x8_bit1o1_128.description)
        
        XCTAssertEqual(bb_8x8_bit8o8_64.description, example_8x8_bit8o8, bb_8x8_bit8o8_64.description)
        XCTAssertEqual(bb_8x8_bit8o8_128.description, example_8x8_bit8o8, bb_8x8_bit8o8_128.description)
    }
}
