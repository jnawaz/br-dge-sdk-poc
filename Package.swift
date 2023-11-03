// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "br-dge-sdk-poc",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "br-dge-sdk-poc",
            targets: ["br-dge-sdk-poc"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "br-dge-sdk-poc"),
        .testTarget(
            name: "br-dge-sdk-pocTests",
            dependencies: ["br-dge-sdk-poc"]),
    ]
)
