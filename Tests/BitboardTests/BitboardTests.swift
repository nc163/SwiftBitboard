import XCTest
@testable import Bitboard

final class BitboardTests: XCTestCase {
    
    func test_init() throws {
        let bb_32  = Bitboard32.init(rawValue: 0, fileWidth: 5, rankWidth: 5)
        let bb_64  = Bitboard64.init(rawValue: 0, fileWidth: 8, rankWidth: 8)
        let bb_128 = Bitboard128.init(rawValue: 0, fileWidth: 11, rankWidth:11)
        
        XCTAssertEqual(bb_32.valid, true)
        XCTAssertEqual(bb_64.valid, true)
        XCTAssertEqual(bb_128.valid, true)
    }
}
