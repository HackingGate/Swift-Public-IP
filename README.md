# Swift-Public-IP
Swift library for checking your public IP address

## Example

```swift
import SwiftPublicIP

getPublicIP(apiService: .icanhazip, ipProtocol: .ipv4) { (string, error) in
    if let error = error {
        print(error.localizedDescription)
    } else if let string = string {
        print(string) // Your IP address
    }
}
```

## Installation

### Carthage

```
github "HackingGate/Swift-Public-IP" "master"
```

### CocoaPods

The library is under development, you have to import it manually. You can use [my CocoaPods repo](https://github.com/HackingGate/Specs). Podfile example below.

```
source 'https://github.com/HackingGate/Specs.git'
pod 'SwiftPublicIP', '~> 0.0.1'
```

DON'T use it in production environment.

I will publish it to the official CocoaPods repo in the future. 

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
