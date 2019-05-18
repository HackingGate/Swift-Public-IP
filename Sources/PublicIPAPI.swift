//
//  PublicIPAPI.swift
//  SwiftPublicIP
//
//  Created by HackingGate on 2019/05/13.
//  Copyright © 2019 SwiftPublicIP. All rights reserved.
//

import Foundation

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
