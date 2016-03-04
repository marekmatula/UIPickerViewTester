//
//  UITests.swift
//  UITests
//
//  Created by Joe Masilotti on 8/25/15.
//  Copyright © 2015 Masilotti.com. All rights reserved.
//

import XCTest

class UIPickerViewTesterUITests: XCTestCase {
    func testPicker() {
        let app = XCUIApplication()
        app.launch()

        app.pickerWheels.element.adjustToPickerWheelValue("iPhone 3GS")
        XCTAssert(app.staticTexts["iPhone 3GS"].exists)
    }

    func testAspPicker() {
        let app = XCUIApplication()
        app.launch()

        app.buttons["ActionPicker"].tap()

        app.buttons["ActionPicker"].tap()

        app.pickerWheels.element.adjustToPickerWheelValue("iPhone 5")
        XCTAssert(app.staticTexts["iPhone 5"].exists)
    }
}
