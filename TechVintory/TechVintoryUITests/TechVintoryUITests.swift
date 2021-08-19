//
//  TechVintoryUITests.swift
//  TechVintoryUITests
//
//  Created by Marli Correia on 2021/08/19.
//

import XCTest

class TechVintoryUITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUpWithError() throws {
        
        app.launch()

        continueAfterFailure = false

    }

    func testLaptop() throws {
        
        let laptop = app.staticTexts["LAPTOP"]
        
        XCTAssert(laptop.exists)
    }
    
    func testTablet() throws {
        
        let tablet = app.staticTexts["TABLET"]
        
        XCTAssert(tablet.exists)
    }
    
    
    func TestButton() throws {
        
        let button = app.buttons.element
        
        XCTAssert(button.exists)
    }
}


