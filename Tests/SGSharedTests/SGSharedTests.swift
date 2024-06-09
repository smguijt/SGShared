import XCTest
@testable import SGShared

final class SGSharedTests: XCTestCase {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
        
        XCTAssertEqual(SGShared().text, "SGShared Library")
    }
}
