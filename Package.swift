import PackageDescription

let package = Package(
    name: "MySDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "MySDK", targets: ["MySDK"]),
    ],
    targets: [
        .target(name: "MySDK"),
    ]
)