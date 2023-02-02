// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SharePackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SharePackage",
            targets: ["SharePackage"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SharePackage",
            dependencies: []),
        .binaryTarget(
                    name: "AmitySDK",
                    url: "https://s3-ap-southeast-1.amazonaws.com/ekosdk-release/ios/amitysdk.zip",
                    checksum: "07daaf84c065d5a80ec5311d4c11ca51b0e3c8e8e0da1a1938573e115218ec01"
                )
       
    ]
)
