// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "BlocksKit",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10),
        .watchOS(.v2),
    ],
    products: [
        .library(
            name: "BlocksKit",
            targets: ["BlocksKit"]
        ),
    ],
    targets: [
        .target(
            name: "BlocksKit",
            path: "BlocksKit",
            sources: ["Core"],
            publicHeadersPath: "."
        ),
        .testTarget(
            name: "BlocksKitTests",
            dependencies: ["BlocksKit"],
            path: "Tests/Core"
        ),
    ]
)
