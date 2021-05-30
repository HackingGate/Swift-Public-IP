//
//  PublicIPAPIURLs.swift
//  SwiftPublicIP
//
//  Created by ERU on 2019/05/18.
//  Copyright © 2019 SwiftPublicIP. All rights reserved.
//

import Foundation

public enum PublicIPAPIURLs {
    
    public enum hybrid: String, CaseIterable {
        case icanhazip = "https://icanhazip.com"
        case ipv6test = "https://v4v6.ipv6-test.com/api/myip.php"
        case seeip = "https://ip.seeip.org"
        case whatismyipaddress = "https://bot.whatismyipaddress.com"
        case ident = "https://ident.me/"
    }
    
    public enum ipv4: String, CaseIterable {
        case icanhazip = "https://ipv4.icanhazip.com"
        case ipv6test = "https://v4.ipv6-test.com/api/myip.php"
        case seeip = "https://ip4.seeip.org"
        case whatismyipaddress = "https://ipv4bot.whatismyipaddress.com"
        case ident = "https://v4.ident.me/"
        
        case ipify = "https://api.ipify.org"
        
        case amazonaws = "https://checkip.amazonaws.com"
        case ipecho = "https://ipecho.net/plain"
    }
    
    public enum ipv6: String, CaseIterable {
        case icanhazip = "https://ipv6.icanhazip.com"
        case ipv6test = "https://v6.ipv6-test.com/api/myip.php"
        case seeip = "https://ip6.seeip.org"
        case whatismyipaddress = "https://ipv6bot.whatismyipaddress.com"
        case ident = "https://v6.ident.me/"
        
        case ipify = "https://api6.ipify.org"
    }
}
