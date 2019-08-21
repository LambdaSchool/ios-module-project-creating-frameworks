//
//  LoadingUITestTests.swift
//  LoadingUITestTests
//
//  Created by Kat Milton on 8/21/19.
//  Copyright © 2019 Kat Milton. All rights reserved.
//

import XCTest
import LoadingAnimationUnit

class LoadingUITestTests: XCTestCase {

    func testThatLoadingStarts() {
        var loadingView = IndeterminateLoadingView()
        loadingView.frame = CGRect(x: 0, y: 0, width: 240, height: 240)
        
        XCTAssertTrue(loadingView.frame == CGRect(x: 0, y: 0, width: 240, height: 240))
        
        
    }

}
