//
//  AppModelTests.swift
//  FitNessTests
//
//  Created by Adrian Rose on 24.05.21.
//  Copyright © 2021 Razeware. All rights reserved.
//

import XCTest
import FitNess

class AppModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

  func testAppModel_whenInitialized_isInNotStartedState() {
    let sut = AppModel()
    let initialState = sut.appState
    XCTAssertEqual(initialState, AppState.notStarted)
  }
  
  func testAppModel_whenStarted_isInInProgressState() {
    // 1 given app in not started
    let sut = AppModel()
    
    // 2 when started
    sut.start()
    
    // 3 then it is in inProgress
    let observedState = sut.appState
    XCTAssertEqual(observedState, AppState.inProgress)
    
  }
  
  
}
