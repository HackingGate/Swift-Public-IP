# Swift-Public-IP
Swift library for checking your public IP address

## Example

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

## Installation

### Carthage

Add it in the Cartfile.

```
github "HackingGate/Swift-Public-IP" "0.0.1"
```

Run `carthage update`.

Add the SwiftPublicIP framework as an embedded binary to your .xcodeproj file.

### CocoaPods

Add it in the Podfile

```
pod 'SwiftPublicIP', '~> 0.0.1'
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
        .package(url: "https://github.com/HackingGate/Swift-Public-IP", from: "0.0.1"),
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
