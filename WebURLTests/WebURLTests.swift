//
//  WebURLTests.swift
//  WebURLTests
//
//  Created by Victor Ruiz on 12/27/20.
//

import XCTest
@testable import WebURL

class WebURLTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testURLisValid() {
        let url = "https://www.mozilla.com"
        XCTAssertEqual(url.validateURL(), true, "URL is Valid")
    }
    
    func testURLisInvalid() {
        let url = "mozilla.com"
        XCTAssertEqual(url.validateURL(), false, "URL is Invalid")
    }

}
