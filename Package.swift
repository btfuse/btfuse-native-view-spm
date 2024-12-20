// swift-tools-version:6.0

import PackageDescription

/*
Copyright 2025 Breautek

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

let package = Package(
    name: "BTFuseNativeView",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "BTFuseNativeView", targets: ["BTFuseNativeView"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/btfuse/btfuse-core-spm.git",
            branch: "main" // TODO: Pin via "from: <version>"
        )
    ]
    targets: [
        .binaryTarget(
            name: "BTFuseNativeView",
            url: "https://github.com/btfuse/fuse/releases/download/ios%2Fnative-view%2F0.1.3-spm.1/BTFuseNativeView.xcframework.zip",
            checksum: "5249a624990f8b8f1b3100e9c50f5777cdba3e21e9e91cfe5c92c140ef1c2a80"
        )
    ]
)
