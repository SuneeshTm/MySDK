// // swift-tools-version: 6.1
// // The swift-tools-version declares the minimum version of Swift required to build this package.

// import PackageDescription

// let package = Package(
//     name: "MySDK",
//     products: [
//         // Products define the executables and libraries a package produces, making them visible to other packages.
//         .library(
//             name: "MySDK",
//             targets: ["MySDK"]),
//     ],
//     targets: [
//         // Targets are the basic building blocks of a package, defining a module or a test suite.
//         // Targets can depend on other targets in this package and products from dependencies.
//         .target(
//             name: "MySDK"),
//         .testTarget(
//             name: "MySDKTests",
//             dependencies: ["MySDK"]
//         ),
//     ]
// )

// swift-tools-version:5.7
//
import PackageDescription

let package = Package(
    name: "MySDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "MySDK", targets: ["MySDK"]),
    ],
    targets: [
        .target(name: "MySDK", dependencies: []),
        .testTarget(name: "MySDKTests", dependencies: ["MySDK"]),
    ]
)

