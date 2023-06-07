// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Modules",
    defaultLocalization: "ru",
    platforms: [
        .iOS(.v16)
    ],

    // MARK: - Products

    products: [

        // MARK: - Main Products

        .library(
            name: "iosAppDependenciesUmbrella",
            type: .dynamic,
            targets: [
                "Dummy",
                "shared",
            ]
        ),
    ],

    targets: [
        .binaryTarget(
            name: "shared",
            path: "artifacts/shared.xcframework"
        ),
        .target(name: "Dummy")
    ]
)
