# Swift-Public-IP
![LICENSE](https://img.shields.io/github/license/HackingGate/Swift-Public-IP)
![Swift Workflow](https://img.shields.io/github/workflow/status/HackingGate/Swift-Public-IP/Swift)

Swift library for checking your public IP address

Supports macOS, iOS, tvOS, watchOS and Linux.

Uses [icanhazip](https://icanhazip.com), [ipv6test](https://v4v6.ipv6-test.com/api/myip.php), [seeip](https://ip.seeip.org), [whatismyipaddress](https://bot.whatismyipaddress.com), [ident](https://ident.me/) and etc.

## Usage

```swift
import SwiftPublicIP

SwiftPublicIP.getPublicIP(url: PublicIPAPIURLs.ipv4.icanhazip.rawValue) { (string, error) in
    if let error = error {
        print(error.localizedDescription)
    } else if let string = string {
        print(string) // Your IP address
    }
}
```

## Implementation

### Carthage

Add it in the Cartfile.

```
github "HackingGate/Swift-Public-IP" "0.0.2"
```

Run `carthage update`.

Add the SwiftPublicIP framework as an embedded binary to your .xcodeproj file.

### CocoaPods

Add it in the Podfile

```
pod 'SwiftPublicIP', '~> 0.0.2'
```

Run `pod install`.

If you only want try this pod without import it. Run  `pod try SwiftPublicIP`.

### Swift Package Manager (SPM)

You need Package.swift file.

```swift
// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "YourAwesomeApp",
    dependencies: [
        .package(url: "https://github.com/HackingGate/Swift-Public-IP", from: "0.0.2"),
    ],
    targets: [
        .target(
            name: "YourAwesomeApp",
            dependencies: ["SwiftPublicIP"],
            path: "Sources")
    ]
)
```

### Git Submodule or Manual

Add as a git submodule.

```
git submodule add https://github.com/HackingGate/Swift-Public-IP
```

If you don't use git, just download it manually.

Drag SwiftPublicIP.xcodeproj to your project.

Add the SwiftPublicIP framework as an embedded binary to your .xcodeproj file.

If you want to remove git submodule Swift-Public-IP.

```
git submodule deinit Swift-Public-IP
```

And don't forget remove reference from Xcode.
