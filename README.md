# XCTestExtensions

Swift package containing extension functions for the [XCTest](https://developer.apple.com/documentation/xctest) framework.

## Summary

This Swift package contains the following extension functions:

* [XCUIElementAttributes.assertLabel(contains:)](Sources/XCTestExtensions/XCUIElementAttributesExtension.swift)
* [XCUIElementAttributes.assertLabel(equals:)](Sources/XCTestExtensions/XCUIElementAttributesExtension.swift)
* [XCUIElement.assertExistence()](Sources/XCTestExtensions/XCUIElementExtension.swift)
* [XCUIElement.assertExistence(timeout:)](Sources/XCTestExtensions/XCUIElementExtension.swift)
* [XCUIElement.assertNonExistence()](Sources/XCTestExtensions/XCUIElementExtension.swift)
* [XCUIElement.assertNonExistence(timeout:)](Sources/XCTestExtensions/XCUIElementExtension.swift)
* [XCUIElement.tap(numberOfTimes:)](Sources/XCTestExtensions/XCUIElementExtension.swift)
* [XCUIElementQuery.assertCount(equals:)](Sources/XCTestExtensions/XCUIElementQueryExtension.swift)
* [XCUIScreenshotProviding.saveScreenshot(to:named:)](Sources/XCTestExtensions/XCUIScreenshotProvidingExtension.swift)

## Installation

1. Add this Swift package to your Xcode project's list of Swift packages by means of this repo's URL.
2. Select the testing target(s) that you would like to add this Swift package to.
