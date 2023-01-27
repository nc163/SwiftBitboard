//import XCTest
//
//final class BitsetTest: XCTestCase {
//
//    func testExample() throws {
//        do {
//            var bb = bb_8x8_empty_128.clone();
//            XCTAssertFalse(bb.bitscan(), bb.description)
//            bb.bitset(file: 1)
//            for f in 1..<8 {
//                if(f == 1) {
//                    XCTAssertTrue(bb.bitscan(file: f), bb.description)
//                }else{
//                    XCTAssertFalse(bb.bitscan(file: f), bb.description)
//                }
//            }
//            bb.bitunset(file: 1)
//            XCTAssertFalse(bb.bitscan(file: 1), bb.description)
//        }
////        XCTAssertFalse(bb_8x8_empty_128.bitscan(file: 5), bb_8x8_empty_128.description)
////        XCTAssertFalse(bb_8x8_empty_128.bitscan(rank: 5), bb_8x8_empty_128.description)
////        XCTAssertFalse(bb_8x8_empty_128.bitscan(file: 5, rank: 5), bb_8x8_empty_128.description)
////
////        XCTAssertTrue(bb_8x8_R_128.bitscan(), bb_8x8_R_128.description)
////        XCTAssertTrue(bb_8x8_R_128.bitscan(file: 5), bb_8x8_R_128.description)
////        XCTAssertTrue(bb_8x8_R_128.bitscan(rank: 5), bb_8x8_R_128.description)
////        XCTAssertTrue(bb_8x8_R_128.bitscan(file: 5, rank: 5), bb_8x8_R_128.description)
////
////        XCTAssertTrue(bb_8x8_bit1o1_64.bitscan(file: 1), bb_8x8_bit1o1_64.description)
////        XCTAssertTrue(bb_8x8_bit1o1_64.bitscan(rank: 1), bb_8x8_bit1o1_64.description)
////        XCTAssertTrue(bb_8x8_bit1o1_64.bitscan(file: 1, rank: 1), bb_8x8_bit1o1_64.description)
////        XCTAssertTrue(bb_8x8_bit1o1_128.bitscan(file: 1, rank: 1), bb_8x8_bit1o1_128.description)
////
////        XCTAssertTrue(bb_8x8_bit8o8_64.bitscan(file: 8), bb_8x8_bit8o8_64.description)
////        XCTAssertTrue(bb_8x8_bit8o8_64.bitscan(rank: 8), bb_8x8_bit8o8_64.description)
////        XCTAssertTrue(bb_8x8_bit8o8_64.bitscan(file: 8, rank: 8), bb_8x8_bit8o8_64.description)
////        XCTAssertTrue(bb_8x8_bit8o8_128.bitscan(file: 8, rank: 8), bb_8x8_bit8o8_128.description)
//
//    }
//}
