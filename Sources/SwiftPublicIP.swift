//
//  SwiftPublicIP.swift
//  SwiftPublicIP
//
//  Created by HackingGate on 2019/05/13.
//  Copyright © 2019 SwiftPublicIP. All rights reserved.
//

import Foundation

public enum APIService {
    case icanhazip
    case ipv6test
}

public enum IPProtocol {
    case auto
    case IPv4
    case IPv6
}

public func getPublicIP(apiService: APIService, ipProtocol: IPProtocol?, completion: @escaping (String?, Error?) -> Void) {
    let ipProtocol = ipProtocol ?? .auto
    
    // default value
    var url: URL = icanhazipAPI.ipAPIURL()
    
    if (apiService == .icanhazip) {
        switch ipProtocol {
        case .auto:
            url = icanhazipAPI.ipAPIURL()
            break
        case .IPv4:
            url = icanhazipAPI.ipv4APIURL()
            break
        case .IPv6:
            url = icanhazipAPI.ipv6APIURL()
            break
        }
    } else if (apiService == .ipv6test) {
        switch ipProtocol {
        case .auto:
            url = icanhazipAPI.ipAPIURL()
            break
        case .IPv4:
            url = ipv6testAPI.ipv4APIURL()
            break
        case .IPv6:
            url = ipv6testAPI.ipv6APIURL()
            break
        }
    }
    
    getPublicIPAddress(requestURL: url) { (result, error) in
        completion(result, error)
    }
}
