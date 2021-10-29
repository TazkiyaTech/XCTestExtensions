# XCTestExtensions

Swift package containing extension functions for the [XCTest](https://developer.apple.com/documentation/xctest) framework.

## Summary

This Swift package contains the following extension functions:

* [XCUIElementAttributes.assertLabel(contains:)](Sources/XCTestExtensions/XCUIElementAttributesExtension.swift) – Asserts that the receiving element's `label` property contains the given `String` value.
* [XCUIElementAttributes.assertLabel(equals:)](Sources/XCTestExtensions/XCUIElementAttributesExtension.swift) – Asserts that the receiving element's `label` property equals the given `String` value.
* [XCUIElement.assertExistence()](Sources/XCTestExtensions/XCUIElementExtension.swift) – Asserts that the receiving element's `exists` property equals `true`.
* [XCUIElement.assertExistence(timeout:)](Sources/XCTestExtensions/XCUIElementExtension.swift) – Asserts that the receiving element's `exists` property equalled `true` at some point within the given number of seconds.
* [XCUIElement.assertNonExistence()](Sources/XCTestExtensions/XCUIElementExtension.swift) – Asserts that the receiving element's `exists` property equals `false`.
* [XCUIElement.assertNonExistence(timeout:)](Sources/XCTestExtensions/XCUIElementExtension.swift) – Asserts that the receiving element's `exists` property equalled `false` at some point within the given number of seconds.
* [XCUIElementQuery.assertCount(equals:)](Sources/XCTestExtensions/XCUIElementQueryExtension.swift) – Asserts that the receiving element's `count` property equals the given value.
* [XCUIScreenshotProviding.saveScreenshot(to:named:)](Sources/XCTestExtensions/XCUIScreenshotProvidingExtension.swift) – Saves a screenshot of the receiving element's current visual state to the given `XCTActivity` instance.

## Installation

1. Add this Swift package to your Xcode project's list of Swift packages by means of this repo's URL.
2. Select the testing target(s) that you would like to add this Swift package to.
