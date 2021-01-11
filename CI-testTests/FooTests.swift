//
//  FooTests.swift
//  CI-testTests
//
//  Created by Eugen Spinu on 10/01/2021.
//

import XCTest
@testable import CI_test

class FooTests: XCTestCase {
    func testFoo() throws {
        let foo = Foo(param1: 2, param2: 3)
        XCTAssert(foo.foo() == 5, "Expect the result to be 5")
    }
}
