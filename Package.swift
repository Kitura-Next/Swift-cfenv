// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

/**
 * Copyright IBM Corporation 2016-2019
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import PackageDescription

let package = Package(
    name: "CloudFoundryEnv",
    products: [
        .library(
            name: "CloudFoundryEnv",
            targets: ["CloudFoundryEnv"]
        )
    ],
    dependencies: [
        //.Package(url: "https://github.com/behrang/YamlSwift.git", majorVersion: 1),
        .package(url: "https://github.com/Kitura-Next/Configuration.git", .upToNextMajor(from: "3.0.0")),
    ],
    targets: [
        .target(
            name: "CloudFoundryEnv",
            dependencies: ["Configuration"]
        ),
        .testTarget(
            name: "CloudFoundryEnvTests",
            dependencies: ["CloudFoundryEnv"]
        ),
    ]
)
