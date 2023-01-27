// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Bitboard",
    products: [
        .library(name: "Bitboard", targets: ["Bitboard"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(name: "Bitboard"),
        .testTarget(name: "BitboardUnitTests", dependencies: ["Bitboard"], path: "Tests/BitboardUnitTests"),
//        .testTarget(name: "BitboardPerformanceTests", dependencies: ["Bitboard"], path: "Tests/BitboardPerformanceTests"),
    ]
)
