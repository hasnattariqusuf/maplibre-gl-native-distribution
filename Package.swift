// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapMetrics Native",
    products: [
        .library(
            name: "MapMetrics",
            targets: ["MapMetrics"])
    ],
    dependencies: [
    ],    
    targets: [
        .binaryTarget(
            name: "MapMetrics",
            url: "https://github.com/MapMetrics/MapMetrics-iOS/raw/refs/heads/main/MapMetrics.zip")
    ]
)
