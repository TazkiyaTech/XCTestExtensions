//
//  File.swift
//  
//
//  Created by Adil Hussain on 24/09/2021.
//

import XCTest

extension XCUIElementAttributes {
    
    /**
     * Asserts that this element's `label` property contains `expectedLabel`.
     *
     * This function is a convenience wrapper around:
     *
     * ```swift
     * XCTAssertTrue(myElement.label.contains(expectedLabel))
     * ```
     *
     * Instead of writing the above, you can simply call:
     *
     * ```swift
     * myElement.assertLabel(contains: expectedLabel)
     * ```
     *
     * - Parameter expectedLabel: The sub-String expected within this element's label.
     *
     * - SeeAlso: [XCUIElementAttributes.label](https://developer.apple.com/documentation/xcuiautomation/xcuielementattributes/label)
     */
    public func assertLabel(contains expectedLabel: String) {
        XCTAssertTrue(label.contains(expectedLabel), "Element's label (\"\(label)\") does not contain \"\(expectedLabel)\".")
    }
    
    /**
     * Asserts that this element's `label` property equals `expectedLabel`.
     *
     * This function is a convenience wrapper around:
     *
     * ```swift
     * XCTAssertEqual(myElement.label, expectedLabel)
     * ```
     *
     * Instead of writing the above, you can simply call:
     *
     * ```swift
     * myElement.assertLabel(equals: expectedLabel)
     * ```
     *
     * - Parameter expectedLabel: The exact String expected in this element's label.
     *
     * - SeeAlso: [XCUIElementAttributes.label](https://developer.apple.com/documentation/xcuiautomation/xcuielementattributes/label)
     */
    public func assertLabel(equals expectedLabel: String) {
        XCTAssertEqual(expectedLabel, label, "Element's label (\"\(label)\") does not equal \"\(expectedLabel)\".")
    }
}
