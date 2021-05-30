//
//  SwiftPublicIPTests.swift
//  SwiftPublicIP
//
//  Created by HackingGate on 2019/05/13.
//  Copyright © 2019 SwiftPublicIP. All rights reserved.
//

import Foundation
import SwiftPublicIP
import XCTest

class SwiftPublicIPTests: XCTestCase {
    func testPublicIP(_ url: String, _ exp: XCTestExpectation) {
        SwiftPublicIP.getPublicIP(url: url) { string, error in
            if let error = error {
                XCTAssertNil(error, error.localizedDescription)
            } else if let string = string {
                XCTAssert(string.count > 0)
                print(string)
            }
            exp.fulfill()
        }
    }

    // MARK: Hybrid

    func test_hybrid_icanhazip() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.hybrid.icanhazip.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_hybrid_ipv6test() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.hybrid.ipv6test.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_hybrid_seeip() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.hybrid.seeip.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_hybrid_whatismyipaddress() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.hybrid.whatismyipaddress.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_hybrid_ident() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.hybrid.ident.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    // MARK: IPv4

    func test_ipv4_icanhazip() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.ipv4.icanhazip.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv4_ipv6test() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.ipv4.ipv6test.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv4_seeip() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.ipv4.seeip.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv4_whatismyipaddress() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.ipv4.whatismyipaddress.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv4_ident() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.ipv4.ident.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv4_ipify() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.ipv4.ipify.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv4_amazonaws() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.ipv4.amazonaws.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv4_ipecho() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.ipv4.ipecho.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    // MARK: IPv6

    func test_ipv6_icanhazip() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.ipv6.icanhazip.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv6_ipv6test() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.ipv6.ipv6test.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv6_seeip() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.ipv6.seeip.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv6_whatismyipaddress() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.ipv6.whatismyipaddress.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv6_ident() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.ipv6.ident.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv6_ipify() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.ipv6.ipify.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    static var allTests = [
        // Hybrid
        ("test_hybrid_icanhazip", test_hybrid_icanhazip),
        ("test_hybrid_ipv6test", test_hybrid_ipv6test),
        ("test_hybrid_seeip", test_hybrid_seeip),
        ("test_hybrid_whatismyipaddress", test_hybrid_whatismyipaddress),
        ("test_hybrid_ident", test_hybrid_ident),

        // IPv4
        ("test_ipv4_icanhazip", test_ipv4_icanhazip),
        ("test_ipv4_ipv6test", test_ipv4_ipv6test),
        ("test_ipv4_seeip", test_ipv4_seeip),
        ("test_ipv4_whatismyipaddress", test_ipv4_whatismyipaddress),
        ("test_ipv4_ident", test_ipv4_ident),

        ("test_ipv4_ipify", test_ipv4_ipify),

        ("test_ipv4_amazonaws", test_ipv4_amazonaws),
        ("test_ipv4_ipecho", test_ipv4_ipecho),

        // IPv6
        ("test_ipv6_icanhazip", test_ipv6_icanhazip),
        ("test_ipv6_ipv6test", test_ipv6_ipv6test),
        ("test_ipv6_seeip", test_ipv6_seeip),
        ("test_ipv6_whatismyipaddress", test_ipv6_whatismyipaddress),
        ("test_ipv6_ident", test_ipv6_ident),

        ("test_ipv6_ipify", test_ipv6_ipify),
    ]
}
