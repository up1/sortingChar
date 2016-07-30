//
//  SortControllerTests.swift
//  SortingChar
//
//  Created by Narat Suchartsunthorn on 7/30/16.
//  Copyright © 2016 mixth. All rights reserved.
//

import XCTest
@testable import SortingChar

class SortControllerTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    func testDisplayResultShouldHaveBeenCalledWhenSorted() {
        let stubProtocol = SomkiatViewController()
        let controller = SortController()
        controller.sortProtocol = stubProtocol
        controller.sort("cat")
        XCTAssertTrue(stubProtocol.spyCall)
    }

    func testDisplayResultShouldNotHaveBeenCalledWhenTextIsEmpty() {
        let stubProtocol = SomkiatViewController()
        let controller = SortController()
        controller.sortProtocol = stubProtocol
        controller.sort("")
        XCTAssertFalse(stubProtocol.spyCall)
    }

    func testDisplayEmptyWhenInputEmpty() {
        let stubProtocol = SomkiatViewController()
        let controller = SortController()
        controller.sortProtocol = stubProtocol
        controller.sort("")
        XCTAssertTrue(stubProtocol.spyDisplayEmpty)
    }

}
class SomkiatViewController: SortControllerProtocol {
    var spyCall: Bool = false
    var spyDisplayEmpty: Bool = false
    func displayResult(result: String) {
        spyCall = true
    }
    func displayEmpty() {
        spyDisplayEmpty = true
    }
}
