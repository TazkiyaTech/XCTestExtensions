//
//  XCUIElementExtensions.swift
//  XCTestExtensions
//
//  Created by Adil Hussain on 25/07/2020.
//  Copyright © 2021 Tazkiya Tech. All rights reserved.
//

import XCTest

extension XCUIElement {
    
    /**
     * Asserts that this element's `exists` property is `true`.
     *
     * - Parameter timeout: The maximum amount of time to wait for this element to come into existence.
     *
     * # Reference
     * [XCUIElement.exists](https://developer.apple.com/documentation/xctest/xcuielement/1500760-exists)
     */
    public func assertExistence(timeout: TimeInterval = 0) {
        if (timeout <= 0) {
            XCTAssertTrue(exists)
        } else {
            XCTAssertTrue(waitForExistence(timeout: timeout))
        }
    }
    
    /**
     * Asserts that this element's `exists` property is `false`.
     *
     * - Parameter timeout: The maximum amount of time to wait for this element to come out of existence.
     *
     * # Reference
     * [XCUIElement.exists](https://developer.apple.com/documentation/xctest/xcuielement/1500760-exists)
     */
    public func assertNonExistence(timeout: TimeInterval = 0) {
        if (timeout <= 0) {
            XCTAssertFalse(exists)
        } else {
            XCTAssertTrue(waitForNonExistence(timeout: timeout))
        }
    }
    
    /**
     * Waits the specified amount of time for this element’s `exists` property to become `false`.
     *
     * - Parameter timeout: The maximum amount of time to wait.
     * - Returns: `false` if the timeout expires without this element coming out of existence.
     *
     * # Reference
     * [XCUIElement.exists](https://developer.apple.com/documentation/xctest/xcuielement/1500760-exists)
     */
    public func waitForNonExistence(timeout: TimeInterval) -> Bool {
        
        let timeStart = Date().timeIntervalSince1970
        
        while (Date().timeIntervalSince1970 <= (timeStart + timeout)) {
            if !exists { return true }
        }
        
        return false
    }
}