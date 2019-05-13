//
//  main.swift
//  SwiftPublicIP-CLI
//
//  Created by ERU on 2019/05/13.
//  Copyright © 2019 SwiftPublicIP. All rights reserved.
//

import Foundation
import SwiftPublicIP

print("Hello, World!")

var sema = DispatchSemaphore(value: 0)

getPublicIP(apiService: .icanhazip, ipProtocol: .IPv4) { (string, error) in
    if let error = error {
        print(error.localizedDescription)
    } else if let string = string {
        print(string)
    }
    sema.signal()
}

sema.wait()
