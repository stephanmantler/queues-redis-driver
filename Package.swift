// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "queues-redis-driver",
    platforms: [
       .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "QueuesRedisDriver",
            targets: ["QueuesRedisDriver"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0-rc.1.1"),
        .package(url: "https://github.com/vapor/queues.git", from: "1.0.0-rc.1"),
        .package(path: "../redis-kit"),
    ],
    targets: [
        .target(
            name: "QueuesRedisDriver",
            dependencies: ["Queues", "RedisKit"]
        ),
        .testTarget(
            name: "QueuesRedisDriverTests",
            dependencies: ["QueuesRedisDriver", "XCTVapor"]
        ),
    ]
)
