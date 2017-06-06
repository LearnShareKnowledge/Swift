//
//  HydrationMeasurementViewTests.swift
//  PlayingWithTextview
//
//  Created by anukool.tiwari@philips.com on 06/06/17.
//  Copyright © 2017 anukool.tiwari@philips.com. All rights reserved.
//

import Foundation
import XCTest
@testable import PlayingWithTextview

class HydrationMeasurementViewTests : XCTestCase
{
    var hydrationMeasurementView : HydrationMeasurementView!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
        hydrationMeasurementView = nil ;
    }
    
    
    func testInitializationOfView()
    {
        hydrationMeasurementView = HydrationMeasurementView(x:50 , y : 50 , width: 246, height: 246);
        
        XCTAssertNotNil(hydrationMeasurementView) ;
    
    }
    
    func testSettingTextMessage()
    {
        let message : String = "this is a text message";
        
        hydrationMeasurementView = HydrationMeasurementView(x:50 , y : 50 , width: 246, height: 246);
        
        hydrationMeasurementView.setText(message: message);
        
        XCTAssertEqual(message, hydrationMeasurementView.getText());
        
        
    }
    
    func testAnimation ()
    {
        hydrationMeasurementView = HydrationMeasurementView(x:50 , y : 50 , width: 246, height: 246);
        
        hydrationMeasurementView.animate(endAngle: 360, timeDuration: 4);
        
        XCTAssertEqual(360, hydrationMeasurementView.circularProgressView.angle);
    }
    
    

}




