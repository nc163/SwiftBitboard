import XCTest

final class OpecodeTest: XCTestCase {

    func test_eq() throws {
        do {
            let bb = bb_8x8_R_64.Clone();
            XCTAssertTrue(bb == bb_8x8_R_64 )
        }
    }
    
//    
//    func test_not() throws {
//        do {
//            let bb = bb_8x8_R_64.Clone();
//            let bb_not = ~bb
//            XCTAssertTrue( )
//        }
//    }
    
//    func test_and() throws {
//        do {
//            let bb = bb_8x8_R_64.Clone();
////            let
//            XCTAssertTrue()
//        }
//    }
}

