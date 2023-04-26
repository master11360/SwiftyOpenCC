// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SwiftyOpenCC",
    products: [
        .library(
            name: "OpenCC",
            targets: ["OpenCC"]),
    ],
    targets: [
        .target(
            name: "OpenCC",
            dependencies: ["copencc"],
            resources: [
                .copy("Dictionary")
            ]),
        .target(
            name: "copencc",
            sources: [
                "source.cpp",
                "src",
                "deps",
            ],
            cxxSettings: [
                .headerSearchPath("src"),
                .headerSearchPath("deps/darts-clone"),
                .headerSearchPath("deps/marisa-0.2.6/include"),
                .headerSearchPath("deps/marisa-0.2.6/lib"),
                .define("ENABLE_DARTS"),
            ]),
    ],
    cxxLanguageStandard: .cxx14
)
