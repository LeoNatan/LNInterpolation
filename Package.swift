// swift-tools-version:5.1

import PackageDescription

let package = Package(
	name: "LNInterpolation",
	platforms: [
		.iOS(.v13)
	],
	products: [
		.library(
			name: "LNInterpolation",
			type: .dynamic,
			targets: ["LNInterpolation"]),
		.library(
			name: "LNInterpolation-Static",
			type: .static,
			targets: ["LNInterpolation"]),
	],
	dependencies: [],
	targets: [
		.target(
			name: "LNInterpolation",
			dependencies: [],
			path: "LNInterpolation",
			exclude: [
				"Info.plist",
				"LNInterpolation.xcodeproj"
			],
			publicHeadersPath: "include",
			cSettings: [
				.headerSearchPath("."),
			]),
	]
)
