// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let realmVersion = "10.33.0"
let realmChecksum = "3257ab9ab3e0e10d7b5d1986ae5700b31d3b0374af65a1364cf10799d20707b7"
let realmSwiftChecksum = "0864e69564cb454cf299f2dc3c624b34387ea6a6d96aa4b9d4b3513d7ed91249"

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
