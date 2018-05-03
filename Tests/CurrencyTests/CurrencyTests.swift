import XCTest
@testable import Currency

final class CurrencyTests: XCTestCase {
    
    func testExample() {
        XCTAssertEqual(Currency.at(list: ["ant", "bat", "cat", "dog", "egg"], indexes: [0, 2, 4]) as! [String], ["ant", "cat", "egg"])
    }
    
    func testExample2() {
        XCTAssertEqual(Currency.at(list: ["ant", "bat", "cat", "dog", "egg"], index: 0) as! [String], ["ant"])
    }
    
    func testExample3() {
        XCTAssertEqual(Currency.chunk(list: [1,3,5,6,7,3], size: 4) as! [[Int]], [[1,3,5,6],[7,3]])
    }

    var currency: Currency = Currency.init()
}
