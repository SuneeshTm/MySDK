// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "MySDK",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "MySDK",
            targets: ["MySDK"]),
    ],
    targets: [
        .target(
            name: "MySDK",
            dependencies: []),
        .testTarget(
            name: "MySDKTests",
            dependencies: ["MySDK"]),
    ]
)
