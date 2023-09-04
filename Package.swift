// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftBitboard",
    products: [
        .library(name: "SwiftBitboard", targets: ["SwiftBitboard"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.1.0"),
    ],
    targets: [
        .target(name: "SwiftBitboard"),
        .testTarget(name: "SwiftBitboardUnitTests", dependencies: ["SwiftBitboard"], path: "Tests/SwiftBitboardUnitTests"),
    ]
)
