# Swift-Public-IP
Swift library for checking your public IP address

## Example

```swift
getPublicIP(apiService: .icanhazip, ipProtocol: .IPv4) { (string, error) in
    if let error = error {
        print(error.localizedDescription)
    } else if let string = string {
        print(string) // Your IP address
    }
}
```
