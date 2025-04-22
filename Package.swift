// swift-tools-version:5.3
// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "MapMetrics",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapMetrics",
            targets: ["MapMetricsWrapper"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MapMetrics",
            path: "./MapMetrics.xcframework"
        ),
        .target(
            name: "MapMetricsWrapper",
            dependencies: ["MapMetrics"],
            path: "Sources/MapMetricsWrapper",
            publicHeadersPath: "."
        )
    ]
)
