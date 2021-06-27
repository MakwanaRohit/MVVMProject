//
//  UserDetailsTests.swift
//  MVVMProjectTests
//
//  Created by Rohit Makwana on 27/06/21.
//

import XCTest
@testable import MVVMProject

class UserDetailsTests: XCTestCase {

    private var userDetailsViewModel : UserDetailViewModel!

    override func setUpWithError() throws {
        self.userDetailsViewModel = UserDetailViewModel(UserModel.with())
    }

    override func tearDownWithError() throws {
        self.userDetailsViewModel = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSuccessData() {
        XCTAssert(self.userDetailsViewModel.userModel.id == UserModel.with().id)
    }
    
    func testFailData() {
        XCTAssert(self.userDetailsViewModel.userModel.id != -1)
    }
}
