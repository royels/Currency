import XCTest
@testable import Currency

final class CurrencyTests: XCTestCase {
    
    func testExample() {
        XCTAssertEqual(currency.at(list: ["ant", "bat", "cat", "dog", "egg"], indexes: [0, 2, 4]) as! [String], ["ant", "cat", "egg"])
    }
    
    func testExample2() {
        XCTAssertEqual(currency.at(list: ["ant", "bat", "cat", "dog", "egg"], index: 0) as! [String], ["ant"])
    }

    
    var currency: Currency = Currency.init()
}
