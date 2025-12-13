//
//  PublicIPAPIURLs.swift
//  SwiftPublicIP
//
//  Created by ERU on 2019/05/18.
//  Copyright © 2019 SwiftPublicIP. All rights reserved.
//

import Foundation

public enum PublicIPAPIURLs {

    public enum Hybrid: String, CaseIterable {
        case icanhazip = "https://icanhazip.com"
        case ipify = "https://api.ipify.org"
        case ifconfigMe = "https://ifconfig.me/ip"
        case myip = "https://api.my-ip.io/v2/ip.txt"
        case ident = "https://ident.me/"
    }

    public enum IPv4: String, CaseIterable {
        case icanhazip = "https://ipv4.icanhazip.com"
        case ipify = "https://api.ipify.org"
        case ifconfigMe = "https://ipv4.ifconfig.me/ip"
        case myip = "https://api4.my-ip.io/v2/ip.txt"
        case ident = "https://v4.ident.me/"
        case amazonaws = "https://checkip.amazonaws.com"
        case ipinfo = "https://ipinfo.io/ip"
    }

    public enum IPv6: String, CaseIterable {
        case icanhazip = "https://ipv6.icanhazip.com"
        case ipify = "https://api6.ipify.org"
        case ifconfigMe = "https://ipv6.ifconfig.me/ip"
        case myip = "https://api6.my-ip.io/v2/ip.txt"
        case ident = "https://v6.ident.me/"
    }
}
