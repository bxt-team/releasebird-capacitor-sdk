// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ReleasebirdCapacitorSdk",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ReleasebirdCapacitorSdk",
            targets: ["ReleasebirdPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "ReleasebirdPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/ReleasebirdPlugin"),
        .testTarget(
            name: "ReleasebirdPluginTests",
            dependencies: ["ReleasebirdPlugin"],
            path: "ios/Tests/ReleasebirdPluginTests")
    ]
)