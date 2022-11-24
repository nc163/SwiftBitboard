import XCTest

final class RotetTest: XCTestCase {

    func test_rotate_uint64_d180() throws {
        do {
            var bb = bb_8x8_R_64.Clone();
            XCTAssertTrue(bb.rotat180())
            XCTAssertEqual(bb.description, example_8x8_Rr180)
        }
    }
    
    func test_rotate_uint128_d180() throws {
        do {
            var bb = bb_8x8_R_128.Clone();
            XCTAssertTrue(bb.rotat180())
            XCTAssertEqual(bb.description, example_8x8_Rr180)
        }
    }
}
