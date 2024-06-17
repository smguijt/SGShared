import XCTest
@testable import SGShared

final class SGSharedTests: XCTestCase {
    func testExample() async throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
        
        let res = try await SGBackendServerClient().fetchData(endPoint: "www.google.com")

        print("res: \(res)")


        XCTAssertEqual(SGShared().text, "SGShared Library")
    }
}