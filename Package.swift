// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  platforms: [.iOS(.v12), .macOS(.v12), .macCatalyst(.v13)],
  products: [
    .library(
        name: "Tun2SocksKit",
        targets: ["Tun2SocksKit"]
    )
  ],
  targets: [
    .target(
        name: "Tun2SocksKit",
        dependencies: ["Tun2SocksKitC", "HevSocks5Tunnel"]
    ),
    .target(
        name: "Tun2SocksKitC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: "HevSocks5Tunnel",
        path: "XCFrameworks/HevSocks5Tunnel.xcframework"
    )
  ]
)
