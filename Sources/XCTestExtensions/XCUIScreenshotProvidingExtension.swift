//
//  XCUIScreenshotProvidingExtension.swift
//  XCTestExtensions
//
//  Created by Adil Hussain on 30/07/2020.
//  Copyright © 2021 Tazkiya Tech. All rights reserved.
//

import XCTest

extension XCUIScreenshotProviding {
    
    public func saveScreenshot(to activity: XCTActivity, named name: String) {
        let attachment = XCTAttachment(screenshot: screenshot())
        attachment.lifetime = .keepAlways
        attachment.name = name
        activity.add(attachment)
    }
}
