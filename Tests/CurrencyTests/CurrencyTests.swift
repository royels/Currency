import XCTest
@testable import Currency

final class CurrencyTests: XCTestCase {
    
    func testExample() {
        XCTAssertEqual(Currency.at(list: ["ant", "bat", "cat", "dog", "egg"], indexes: [0, 2, 4]), ["ant", "cat", "egg"])
    }
    
    func testExample2() {
        XCTAssertEqual(Currency.at(list: ["ant", "bat", "cat", "dog", "egg"], index: 0), ["ant"])
    }
    
    func testExample3() {
        XCTAssertEqual(Currency.chunk(list: [1,3,5,6,7,3], size: 4), [[1,3,5,6],[7,3]])
    }
    
    func testExample4() {
        XCTAssertEqual(Currency<Any>.compact(list: [1,2,3,4,nil,5] as [Int?]) , [1,2,3,4,5])
    }
    
    func testExample5() {
        XCTAssertEqual(Currency.factorial(num: 3), 6 )
    }
    
    func testExample6() {
        var list = [1,3,4,5,6]
        Currency<Any>.fill(&list, 3 )
        XCTAssertEqual(list, [3,3,3,3,3])
    }
    
    func testExample7() {
        let list = [1,3,4,5,6]
        XCTAssertNil(Currency.find(list, callback: { $0 == 2 }))
        XCTAssertTrue(Currency.find(list, callback: { $0 == 5 })!)
    }
    
    func testExample8() {
        let list = [1,4,5,6,3]
        XCTAssertTrue((Currency.findIndex(list, callback: { $0 == 5 })! == 2))
    }
    
    func testExample9() {
        let list = [1,4,5,6,3]
        let list2 = [Any]()
        XCTAssertEqual(Currency.first(list) as! Int, 1)
        XCTAssertNil(Currency.first(list2))
    }
    
}
