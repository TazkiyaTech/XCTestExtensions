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
     * Asserts that the number of elements matching this query is equal to `expectedCount`.
     *
     * This function allows tests to read more fluently by placing the assertion directly on the query being tested.
     *
     * Instead of writing:
     *
     * ```swift
     * XCTAssertEqual(myElementQuery.count, expectedCount)
     * ```
     *
     * you can write:
     *
     * ```swift
     * myElementQuery.assertCount(equals: expectedCount)
     * ```
     *
     * - Parameter expectedCount: The number of elements expected to match this query.
     * - SeeAlso: [XCUIElementQuery.count](https://developer.apple.com/documentation/xcuiautomation/xcuielementquery/count)
     */
    public func assertCount(equals expectedCount: Int) {
        XCTAssertEqual(count, expectedCount, "Expected \(expectedCount) elements to match the query but found \(self.count) matches.")
    }
}
