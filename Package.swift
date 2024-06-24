// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SGShared",
    products: [
        .library(
            name: "SGShared",
            targets: ["SGShared"]),
    ],
    dependencies: [
        .package(url: "https://github.com/CoreOffice/CoreXLSX.git", .upToNextMinor(from: "0.14.2"))
    ],
    targets: [
        .target(
            name: "SGShared",
            dependencies: [
                .product(name: "CoreXLSX", package: "CoreXLSX")
            ]),
        .testTarget(
            name: "SGSharedTests",
            dependencies: ["SGShared", "CoreXLSX"]),
    ]
)
