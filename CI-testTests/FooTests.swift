//
//  FooTests.swift
//  CI-testTests
//
//  Created by Eugen Spinu on 10/01/2021.
//

import XCTest
@testable import CI_test

class FooTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFoo() throws {
        let foo = Foo(param1: 2, param2: 3)
        XCTAssert(foo.foo() == 5, "Expect the result to be 5")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
