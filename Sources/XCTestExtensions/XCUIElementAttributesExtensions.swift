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
     * - Parameter expectedLabel: The sub-String expected within this element's label.
     *
     * # Reference
     * [XCUIElementAttributes.label](https://developer.apple.com/documentation/xctest/xcuielementattributes/1500692-label)
     */
    public func assertLabel(contains expectedLabel: String) {
        XCTAssertTrue(label.contains(expectedLabel), "Element's label (\"\(label)\") does not contain \"\(expectedLabel)\".")
    }
    
    /**
     * Asserts that this element's `label` property equals `expectedLabel`.
     *
     * - Parameter expectedLabel: The exact String expected in this element's label.
     *
     * # Reference
     * [XCUIElementAttributes.label](https://developer.apple.com/documentation/xctest/xcuielementattributes/1500692-label)
     */
    public func assertLabel(equals expectedLabel: String) {
        XCTAssertEqual(expectedLabel, label, "Element's label (\"\(label)\") does not equal \"\(expectedLabel)\".")
    }
}
