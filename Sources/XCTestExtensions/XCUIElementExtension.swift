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
     * This is a nicer alternative to writing assertions like the following:
     *
     * ```
     * XCTAssertTrue(myElement.exists)
     * XCTAssertTrue(myElement.waitForExistence(timeout: 1))
     * ```
     *
     * Instead, you can write assertions like the following:
     *
     * ```
     * myElement.assertExistence()
     * myElement.assertExistence(timeout: 1)
     * ```
     *
     * - Parameter timeout: The maximum amount of time to wait for this element to come into existence.
     *
     * # Reference
     * [XCUIElement.exists](https://developer.apple.com/documentation/xctest/xcuielement/1500760-exists)
     */
    public func assertExistence(timeout: TimeInterval = 0) {
        if (timeout <= 0) {
            XCTAssertTrue(exists, "Expected \(self) to exist within the app's UI hierarchy but it does not exist.")
        } else {
            XCTAssertTrue(waitForExistence(timeout: timeout), "Waited \(timeout) seconds for \(self) to come into existence but it did not.")
        }
    }
    
    /**
     * Asserts that this element's `exists` property is `false`.
     *
     * This is a nicer alternative to writing assertions like the following:
     *
     * ```
     * XCTAssertFalse(myElement.exists)
     * XCTAssertTrue(myElement.waitForNonExistence(timeout: 1))
     * ```
     *
     * Instead, you can write assertions like the following:
     *
     * ```
     * myElement.assertNonExistence()
     * myElement.assertNonExistence(timeout: 1)
     * ```
     *
     * - Parameter timeout: The maximum amount of time to wait for this element to come out of existence.
     *
     * # Reference
     * [XCUIElement.exists](https://developer.apple.com/documentation/xctest/xcuielement/1500760-exists)
     */
    public func assertNonExistence(timeout: TimeInterval = 0) {
        if (timeout <= 0) {
            XCTAssertFalse(exists, "Expected \(self) not to exist within the app's UI hierarchy but it does exist.")
        } else {
            XCTAssertTrue(waitForNonExistence(timeout: timeout), "Waited \(timeout) seconds for \(self) to come out of existence but it did not.")
        }
    }
    
    /**
     * Sends a tap event to this element via the `XCUIElement.tap()` function if this element is deemed to be hittable.
     * Otherwise, sends a tap event to this element via the `XCUICoordinate.tap()` function.
     */
    public func forceTap() {
        if (isHittable) {
            tap()
        } else {
            let coordinate = coordinate(withNormalizedOffset: CGVector(dx:0.0, dy:0.0))
            coordinate.tap()
        }
    }
    
    /**
     * Performs the specified number of taps on this element.
     *
     * This function calls the `XCUIElement.tap()` function the specified number of times.
     * It contrasts with the `XCUIElement.tap(withNumberOfTaps:numberOfTouches:)` function
     * in that it gives a little more time between each tap
     * and therefore increases the chance of the view picking up and processing each tap as a separate tap.
     *
     * - Parameter numberOfTimes: The number of taps to perform.
     */
    public func tap(numberOfTimes: UInt) {
        (0..<numberOfTimes).forEach { _ in tap() }
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
