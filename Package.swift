// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SwiftPublicIP",
    products: [
        .library(
            name: "SwiftPublicIP",
            targets: ["SwiftPublicIP"])
    ],
    targets: [
        .target(
            name: "SwiftPublicIP",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "SwiftPublicIPTests",
            dependencies: ["SwiftPublicIP"])
    ]
)
