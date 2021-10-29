//
//  XCUIScreenshotProvidingExtension.swift
//  XCTestExtensions
//
//  Created by Adil Hussain on 30/07/2020.
//  Copyright © 2021 Tazkiya Tech. All rights reserved.
//

import XCTest

extension XCUIScreenshotProviding {
    
    /**
     * Saves a screenshot of this element's current visual state to the given `XCTActivity` instance.
     *
     * Using this function is as simple as writing the following in any of your test methods:
     *
     * ```myElement.saveScreenshot(to: self, named: "my_screenshot")```
     *
     * - Parameter activity: The `XCTActivity` instance to which the screenshot is to be saved.
     * - Parameter name: The name to give to the screenshot.
     */
    public func saveScreenshot(to activity: XCTActivity, named name: String) {
        let attachment = XCTAttachment(screenshot: screenshot())
        attachment.lifetime = .keepAlways
        attachment.name = name
        activity.add(attachment)
    }
}
