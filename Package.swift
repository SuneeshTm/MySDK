// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MySDK",
    platforms: [
        .iOS(.v12) 
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
            dependencies: [],
            path: "Sources"
        )
    ]
)
