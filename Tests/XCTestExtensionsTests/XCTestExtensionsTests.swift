import XCTest
@testable import XCTestExtensions

final class XCTestExtensionsTests: XCTestCase {
    
    func test_example() {
        XCTAssertEqual(2, 1+1)
    }

    static var allTests = [
        ("test_example", test_example),
    ]
}
