//
//  SwiftPublicIPTests.swift
//  SwiftPublicIP
//
//  Created by HackingGate on 2019/05/13.
//  Copyright © 2019 SwiftPublicIP. All rights reserved.
//

import Foundation
import XCTest
import SwiftPublicIP

class SwiftPublicIPTests: XCTestCase {
    func testPublicIP(_ url: String, _ exp: XCTestExpectation) {
        SwiftPublicIP.getPublicIP(url: url) { (string, error) in
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
        testPublicIP(PublicIPAPIURLs.Hybrid.icanhazip.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_hybrid_ipify() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.Hybrid.ipify.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_hybrid_ifconfigMe() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.Hybrid.ifconfigMe.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_hybrid_myip() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.Hybrid.myip.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_hybrid_ident() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.Hybrid.ident.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    // MARK: IPv4

    func test_ipv4_icanhazip() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.IPv4.icanhazip.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv4_ipify() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.IPv4.ipify.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv4_ifconfigMe() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.IPv4.ifconfigMe.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv4_myip() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.IPv4.myip.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv4_ident() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.IPv4.ident.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv4_amazonaws() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.IPv4.amazonaws.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv4_ipinfo() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.IPv4.ipinfo.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    // MARK: IPv6

    func test_ipv6_icanhazip() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.IPv6.icanhazip.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv6_ipify() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.IPv6.ipify.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv6_ifconfigMe() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.IPv6.ifconfigMe.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv6_myip() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.IPv6.myip.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    func test_ipv6_ident() {
        let exp = expectation(description: "\(#function)\(#line)")
        testPublicIP(PublicIPAPIURLs.IPv6.ident.rawValue, exp)
        waitForExpectations(timeout: 40, handler: nil)
    }

    static var allTests = [
        // Hybrid
        ("test_hybrid_icanhazip", test_hybrid_icanhazip),
        ("test_hybrid_ipify", test_hybrid_ipify),
        ("test_hybrid_ifconfigMe", test_hybrid_ifconfigMe),
        ("test_hybrid_myip", test_hybrid_myip),
        ("test_hybrid_ident", test_hybrid_ident),

        // IPv4
        ("test_ipv4_icanhazip", test_ipv4_icanhazip),
        ("test_ipv4_ipify", test_ipv4_ipify),
        ("test_ipv4_ifconfigMe", test_ipv4_ifconfigMe),
        ("test_ipv4_myip", test_ipv4_myip),
        ("test_ipv4_ident", test_ipv4_ident),
        ("test_ipv4_amazonaws", test_ipv4_amazonaws),
        ("test_ipv4_ipinfo", test_ipv4_ipinfo),

        // IPv6
        ("test_ipv6_icanhazip", test_ipv6_icanhazip),
        ("test_ipv6_ipify", test_ipv6_ipify),
        ("test_ipv6_ifconfigMe", test_ipv6_ifconfigMe),
        ("test_ipv6_myip", test_ipv6_myip),
        ("test_ipv6_ident", test_ipv6_ident)
    ]
}
