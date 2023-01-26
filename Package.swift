// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let realmVersion = "10.33.0"
let realmChecksum = "11fbe08534f421b77798e36a1d5708ef0d0479bb8bef84686ad9bff75845ed15"
let realmSwiftChecksum = "70228e71d3d1631cc4f9694f81132dffdafbda4ebc957e227cf8f998ef76e960"

func buildTargets() -> [Target] {
    let baseURL = "https://github.com/atpsoft/RealmBinaries/releases/download/\(realmVersion)"

    return [
        .binaryTarget(
            name: "Realm",
            url: "\(baseURL)/Realm.xcframework.zip",
            checksum: realmChecksum
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "\(baseURL)/RealmSwift.xcframework.zip",
            checksum: realmSwiftChecksum
        )
    ]
}

let package = Package(
    name: "RealmBinaries",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v11),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Realm",
            targets: ["Realm"]),
        .library(
            name: "RealmSwift",
            targets: ["RealmSwift"])
    ],
    targets: buildTargets()
)
