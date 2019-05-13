//
//  PublicIPAPI.swift
//  SwiftPublicIP
//
//  Created by HackingGate on 2019/05/13.
//  Copyright © 2019 SwiftPublicIP. All rights reserved.
//

import Foundation

struct APIServiceClass {
    var ipAPI: String
    var ipv4API: String
    var ipv6API: String
    init(ipAPI: String, ipv4API: String, ipv6API: String) {
        self.ipAPI = ipAPI
        self.ipv4API = ipv4API
        self.ipv6API = ipv6API
    }
    func ipAPIURL() -> URL {
        return URL(string: self.ipAPI)!
    }
    func ipv4APIURL() -> URL {
        return URL(string: self.ipv4API)!
    }
    func ipv6APIURL() -> URL {
        return URL(string: self.ipv6API)!
    }
}

let icanhazipAPI = APIServiceClass(ipAPI: "https://icanhazip.com",
                                   ipv4API: "https://ipv4.icanhazip.com",
                                   ipv6API: "https://ipv4.icanhazip.com")

let ipv6testAPI = APIServiceClass(ipAPI: "https://v4v6.ipv6-test.com/api/myip.php",
                                  ipv4API: "https://v4.ipv6-test.com/api/myip.php",
                                  ipv6API: "https://v6.ipv6-test.com/api/myip.php")

typealias CompletionHandler = (String?, Error?) -> Void

func getPublicIPAddress(requestURL: URL, completion: @escaping CompletionHandler) {
    URLSession.shared.dataTask(with: requestURL) { (data, response, error) in
        if let error = error {
            completion(nil, CustomError.error(error))
            return
        }
        guard let data = data else {
            completion(nil, CustomError.noData)
            return
        }
        guard let ipAddress = String(data: data, encoding: .utf8) else {
            completion(nil, CustomError.undecodeable)
            return
        }
        completion(ipAddress, nil)
    }.resume()
}

enum CustomError: LocalizedError {
    case noData
    case error(Error)
    case undecodeable

    public var errorDescription: String? {
        switch self {
        case .noData:
            return "No data response."
        case .error(let err):
            return err.localizedDescription
        case .undecodeable:
            return "Data undecodeable."
        }
    }
}
