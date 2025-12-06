# XCTestExtensions

Swift package containing extension functions for the [XCTest](https://developer.apple.com/documentation/xctest) framework.

## Summary

This Swift package contains the following extension functions:
                                               
| Function                                                                                  | Purpose                                                                                           |
|-------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------|
| [XCUIElementAttributes.assertLabel(contains:)][XCUIElementAttributesExtension-swift-file] | Asserts that the UI element's label contains the given text.                                      |
| [XCUIElementAttributes.assertLabel(equals:)][XCUIElementAttributesExtension-swift-file]   | Asserts that the UI element's label equals the given text.                                        |
| [XCUIElement.assertExistence()][XCUIElementExtension-swift-file]                          | Asserts that the UI element exists in the UI hierarchy.                                           |
| [XCUIElement.assertExistence(timeout:)][XCUIElementExtension-swift-file]                  | Asserts that the UI element appears in the UI hierarchy within the specified amount of time.      |
| [XCUIElement.assertNonExistence()][XCUIElementExtension-swift-file]                       | Asserts that the UI element does not exist in the UI hierarchy.                                   |
| [XCUIElement.assertNonExistence(timeout:)][XCUIElementExtension-swift-file]               | Asserts that the UI element disappears from the UI hierarchy within the specified amount of time. |
| [XCUIElement.forceTap()][XCUIElementExtension-swift-file]                                 | Sends a tap event to the UI element using one of two strategies, selected automatically.          |
| [XCUIElement.tap(numberOfTimes:)][XCUIElementExtension-swift-file]                        | Performs the specified number of taps on the UI element.                                          |
| [XCUIElementQuery.assertCount(equals:)][XCUIElementQueryExtension-swift-file]             | Asserts that the number of elements which match this query equals the given number.               |
| [XCUIScreenshotProviding.saveScreenshot(to:named:)][XCUIScreenshotProviding-swift-file]   | Saves a screenshot of the UI element's current visual state to the given test activity.           |

## Installation

1. Add this Swift package to your Xcode project's list of Swift packages by means of this repository's URL,
   i.e. https://github.com/TazkiyaTech/XCTestExtensions.
2. Select the UI testing target(s) that you would like to add this Swift package to.

[XCUIElementAttributesExtension-swift-file]: Sources/XCTestExtensions/XCUIElementAttributesExtension.swift
[XCUIElementExtension-swift-file]: Sources/XCTestExtensions/XCUIElementExtension.swift
[XCUIElementQueryExtension-swift-file]: Sources/XCTestExtensions/XCUIElementQueryExtension.swift
[XCUIScreenshotProviding-swift-file]: Sources/XCTestExtensions/XCUIScreenshotProvidingExtension.swift
