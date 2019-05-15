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
    case ipv4
    case ipv6
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
        case .ipv4:
            url = icanhazipAPI.ipv4APIURL()
            break
        case .ipv6:
            url = icanhazipAPI.ipv6APIURL()
            break
        }
    } else if (apiService == .ipv6test) {
        switch ipProtocol {
        case .auto:
            url = icanhazipAPI.ipAPIURL()
            break
        case .ipv4:
            url = ipv6testAPI.ipv4APIURL()
            break
        case .ipv6:
            url = ipv6testAPI.ipv6APIURL()
            break
        }
    }
    
    getPublicIPAddress(requestURL: url) { (result, error) in
        completion(result, error)
    }
}
