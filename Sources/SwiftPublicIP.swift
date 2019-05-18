//
//  SwiftPublicIP.swift
//  SwiftPublicIP
//
//  Created by HackingGate on 2019/05/13.
//  Copyright © 2019 SwiftPublicIP. All rights reserved.
//

import Foundation

/// Get public IP address from specified API. Including icanhazip, ipv6-test...
///
/// - parameter url:            The API URL. Use `PublicIPAPIURLs` class. `ipv4` for IPv4 only,
/// `ipv6` for IPv6 only, `hybrid` for both IPv4 or IPv6. You can use custom API URL but make sure
/// it returns vilidate IP address.
/// - parameter completion:     The result. IP address in a String.
///
public func getPublicIP(url: String, completion: @escaping (String?, Error?) -> Void) {

    guard let url: URL = URL(string: url) else {
        fatalError("URL is not validate")
    }
    
    getPublicIPAddress(requestURL: url) { (result, error) in
        completion(result, error)
    }
}
