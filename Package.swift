// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SwiftBitboard",
  products: [
    .library(name: "SwiftBitboard", targets: ["SwiftBitboard"]),
  ],
  targets: [
    .target(name: "SwiftBitboard"),
    .testTarget(name: "SwiftBitboardUnitTests", dependencies: ["SwiftBitboard"], path: "Tests"),
  ]
)
