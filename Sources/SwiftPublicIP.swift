//
//  SwiftPublicIP.swift
//  SwiftPublicIP
//
//  Created by HackingGate on 2019/05/13.
//  Copyright © 2019 SwiftPublicIP. All rights reserved.
//

import Foundation

public func getPublicIP(url: String, completion: @escaping (String?, Error?) -> Void) {

    guard let url: URL = URL(string: url) else {
        fatalError("URL is not validate")
    }
    
    getPublicIPAddress(requestURL: url) { (result, error) in
        completion(result, error)
    }
}
