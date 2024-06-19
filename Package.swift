// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorHello",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorHello",
            targets: ["HelloPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "HelloPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/HelloPlugin"),
        .testTarget(
            name: "HelloPluginTests",
            dependencies: ["HelloPlugin"],
            path: "ios/Tests/HelloPluginTests")
    ]
)