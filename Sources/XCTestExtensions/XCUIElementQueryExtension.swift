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
     * Asserts that the number of elements that match this query is `count`.
     *
     * # Reference
     * [XCUIElementQuery.count](https://developer.apple.com/documentation/xctest/xcuielementquery/1500625-count)
     */
    public func assertCount(equals count: Int) {
        XCTAssertEqual(count, self.count)
    }
}
