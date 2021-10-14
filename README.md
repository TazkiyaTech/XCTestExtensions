# XCTestExtensions

Swift package containing extension functions for the [XCTest](https://developer.apple.com/documentation/xctest) framework.

## Summary

This Swift package contains the following extension functions:

* [XCUIElementAttributes.assertLabel(contains:)](Sources/XCTestExtensions/XCUIElementAttributesExtension.swift) – Asserts that the receiving element's `label` property contains the given `String` value. This is a nicer alternative to writing `XCTAssertTrue(myElement.label.contains(expectedLabel))`. Instead, you can write `myElement.assertLabel(contains: expectedLabel)`.
* [XCUIElementAttributes.assertLabel(equals:)](Sources/XCTestExtensions/XCUIElementAttributesExtension.swift) – Asserts that the receiving element's `label` property equals the given `String` value. This is a nicer alternative to writing `XCTAssertEqual(myElement.label, expectedLabel)`. Instead, you can write `myElement.assertLabel(equals: expectedLabel)`.
* [XCUIElement.assertExistence()](Sources/XCTestExtensions/XCUIElementExtension.swift) – Asserts that the receiving element's `exists` property is `true`. This is a nicer alternative to writing `XCTAssertTrue(myElement.exists)`. Instead, you can write `myElement.assertExistence()`.
* [XCUIElement.assertExistence(timeout:)](Sources/XCTestExtensions/XCUIElementExtension.swift) – Asserts that the receiving element's `exists` property is `true`. This is a nicer alternative to writing `XCTAssertTrue(myElement.waitForExistence(timeout: 1))`. Instead, you can write `myElement.assertExistence(timeout: 1)`.
* [XCUIElement.assertNonExistence()](Sources/XCTestExtensions/XCUIElementExtension.swift) – Asserts that the receiving element's `exists` property is `false`. This is a nicer alternative to writing `XCTAssertFalse(myElement.exists)`. Instead, you can write `myElement.assertNonExistence()`.
* [XCUIElement.assertNonExistence(timeout:)](Sources/XCTestExtensions/XCUIElementExtension.swift) – Asserts that the receiving element's `exists` property is `false`. This is a nicer alternative to writing `XCTAssertTrue(myElement.waitForNonExistence(timeout: 1))`. Instead, you can write `myElement.assertNonExistence(timeout: 1)`.
* [XCUIElementQuery.assertCount(equals:)](Sources/XCTestExtensions/XCUIElementQueryExtension.swift) – Asserts that the receiving element's `count` property matches the given value. This is a nicer alternative to writing `XCTAssertEqual(myElementQuery.count, 1)`. Instead, you can write `myElementQuery.assertCount(1)`.
* [XCUIScreenshotProviding.saveScreenshot(to:named:)](Sources/XCTestExtensions/XCUIScreenshotProvidingExtension.swift) – Saves a screenshot of the receiving element's current visual state to the given `XCTActivity` instance. So, in your test methods, you can simply write `myElement.saveScreenshot(to: self, named: "my_screenshot")`.

## Installation

1. Add this Swift package to your Xcode project's list of Swift packages by means of this repo's URL.
2. Select the testing target(s) that you would like to add this Swift package to.
