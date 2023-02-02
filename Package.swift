// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SharedFrameworks",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SharedFrameworks",
            targets: ["SharedFrameworks", "MobileVLCKit", "Realm"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SharedFrameworks",
            dependencies: []),
        .binaryTarget(
                    name: "MobileVLCKit",
                    url: "https://ascdependencies.s3.ap-southeast-1.amazonaws.com/Dependency/MobileVLCKit.xcframework.zip",
                    checksum: "2a920618eca9065aaf2c3ba71c4772ca825fa7a54ca060838605cdc476e6da53"
                ),
        .binaryTarget(
                    name: "Realm",
                    url: "https://ascdependencies.s3.ap-southeast-1.amazonaws.com/Dependency/Realm.xcframework.zip",
                    checksum: "67556683f58bf8d93e2ae393056165e8b87f22e711f07592913acad87b79e3c4"
                )
       
    ]
)

