// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppearanceProviding",
    platforms: [
        .macOS(.v14),
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "AppearanceProviding",
            targets: ["AppearanceProviding"]),
    ],
    targets: [
        .target(
            name: "AppearanceProviding"),
        .testTarget(
            name: "AppearanceProvidingTests",
            dependencies: ["AppearanceProviding"]),
    ]
)
