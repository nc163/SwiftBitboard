import XCTest

final class RotetTest: XCTestCase {

    func testExample1() throws {
        do {
            var bb = bb_8x8_R_64.Clone();
            XCTAssertTrue(bb.rotat(at: .d0))
            XCTAssertTrue(bb.rotat(at: .d360))
            XCTAssertEqual(bb_8x8_R_64, bb)
        }
    }
    
    func testExample2() throws {
        do {
            var bb = bb_8x8_R_64.Clone();
            XCTAssertTrue(bb.rotat(at: .d90))
            XCTAssertEqual(bb.description, example_8x8_Rr90, bb.description)
        }
    }
    
    func testExample3() throws {
//        do {
//            var bb = bb_8x8_R_128.Clone();
//            XCTAssertTrue(bb.rotat(at: .d90))
//            XCTAssertEqual(bb.description, example_8x8_Rr90, bb.description)
//        }
        
        let val: UInt128 = UInt128.max
        String.init(format: "0x%0X", val as! CVarArg ) 
    }
    
}

