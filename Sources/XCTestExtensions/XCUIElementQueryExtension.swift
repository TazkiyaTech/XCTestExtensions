//
//  XCUIElementQueryExtension.swift
//  XCTestExtensions
//
//  Created by Adil Hussain on 19/03/2021.
//  Copyright © 2021 Tazkiya Tech. All rights reserved.
//

import XCTest

extension XCUIElementQuery {
    
    /**
     * Asserts that the number of elements which match this query equals `count`.
     *
     * This is a nicer alternative to writing:
     *
     * ```XCTAssertEqual(myElementQuery.count, expectedCount)```
     *
     * Instead, you can write:
     *
     * ```myElementQuery.assertCount(equals: expectedCount)```
     *
     * - Parameter count: The number of elements expected to match this query.
     *
     * # Reference
     * [XCUIElementQuery.count](https://developer.apple.com/documentation/xctest/xcuielementquery/1500625-count)
     */
    public func assertCount(equals count: Int) {
        XCTAssertEqual(count, self.count, "Expected \(count) elements to match the query but found \(self.count) matches.")
    }
}
