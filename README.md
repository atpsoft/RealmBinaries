# RealmBinaries
Vends Realm xcframeworks via SPM to save build time
adapted from https://github.com/bioche/RealmBinaries/
just supporting the latest version of XCode we're using atm to slightly shorten time to get new builds

How to release a new version :
- Download from https://github.com/realm/realm-swift/releases last release artefacts realm-swift-<Realm version>.zip
- It should contain multiple xcode versions of Realm & RealmSwift xcframeworks
- Run swift package compute-checksum <path> from this repo folder for both zips
- Replace version & checksums in package.swift
- Push, tag with the same version number as original repo & upload both zips as assets of the release
