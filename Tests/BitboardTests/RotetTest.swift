import XCTest

final class RotetTest: XCTestCase {

    func test_rotate_d180() throws {
        do {
            var bb = bb_8x8_R_64.Clone();
            XCTAssertTrue(bb.rotat180())
            XCTAssertEqual(bb.description, example_8x8_Rr180)
        }
    }
}

