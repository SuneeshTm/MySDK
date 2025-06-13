// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MySDK",
    platforms: [
        .iOS(.v12) // or whichever minimum version you want
    ],
    products: [
        .library(
            name: "MySDK",
            targets: ["MySDK"]
        ),
    ],
    targets: [
        .target(
            name: "MySDK",
            path: "Sources"
        )
    ]
)
