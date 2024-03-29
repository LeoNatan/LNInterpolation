# LNInterpolation

An interpolation framework for Cocoa and Cocoa Touch.

[![GitHub release](https://img.shields.io/github/release/LeoNatan/LNInterpolation.svg)](https://github.com/LeoNatan/LNInterpolation/releases) [![GitHub stars](https://img.shields.io/github/stars/LeoNatan/LNInterpolation.svg)](https://github.com/LeoNatan/LNInterpolation/stargazers) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/LeoNatan/LNInterpolation/master/LICENSE) <span class="badge-paypal"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BR68NJEJXGWL6" title="Donate to this project using PayPal"><img src="https://img.shields.io/badge/paypal-donate-yellow.svg?style=flat" alt="PayPal Donation Button" /></a></span>

[![GitHub issues](https://img.shields.io/github/issues-raw/LeoNatan/LNInterpolation.svg)](https://github.com/LeoNatan/LNInterpolation/issues) [![GitHub contributors](https://img.shields.io/github/contributors/LeoNatan/LNInterpolation.svg)](https://github.com/LeoNatan/LNInterpolation/graphs/contributors) [![Swift Package Manager compatible](https://img.shields.io/badge/swift%20package%20manager-compatible-green)](https://swift.org/package-manager/) [![Carthage compatible](https://img.shields.io/badge/carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Protocol

The framework defines a protocol, `LNInterpolable` (`Interpolable` in Swift), defining a common API for interpolating between two values.

The protocol defines two methods.

### Objective C

```objective-c
- (instancetype)interpolateToValue:(id)toValue progress:(double)progress;
- (instancetype)interpolateToValue:(id)toValue progress:(double)progress behavior:(LNInterpolationBehavior)behavior;
```

### Swift

```
public func interpolate(to toValue: Any, progress: Double) -> Self
public func interpolate(to toValue: Any, progress: Double, behavior: InterpolationBehavior) -> Self
```

The first variant returns an interpolated value between the original and `toValue` according to progress, using the default behavior.
The second is similar, but receives a behavior modifier. Each implementation can use this to choose how to implement the interpolation between the values. A default value of `LNInterpolationBehaviorUseDefault` (`.useDefault` in Swift) is always available.

## Provided Implementations

The framework provides implementation for the most common cases where interpolation may be needed.

### `NSValue` and `NSNumber`

An implementation is provided for `NSValue`, which provides support for the following values:

* Numbers (`NSNumber`)
	* Decimal numbers (`NSDecimalNumber`)
* Core Graphics: `CGPoint`, `CGSize`, `CGVector`, `CGRect`, `CGAffineTransform` (`NSValue`)
* UIKit: `UIOffset`, `UIEdgeInsets` (`NSValue`)
* AppKit: `NSEdgeInsets` (`NSValue`)

<img src="Supplements/Numbers.png" />
<img src="Supplements/Values.png" />

### `UIColor` and `NSColor`

An implementation is provided for colors (both for iOS and macOS). By default, color interpolation is performed in Lab colorspace for best possible interpolation quality. If performance is an issue, you may use `LNInterpolationBehaviorUseRGBColorSpace` (`.useRGBColorSpace` in Swift) to specify a behavior where RGB colorspace is used.

<img src="Supplements/Colors.png" />

## Demo Playground

A demo playground is provided. Open LNInterpolationExample/LNInterpolationExample.xcworkspace and build the framework for macOS. Open the playground and explore the available pages.

## Adding to Your Project

### Swift Package Manager

Swift Package Manager is the recommended way to integrate `LNInterpolation` in your project.

`LNInterpolation` supports SPM versions 5.1.0 and above. To use SPM, you should use Xcode 11 to open your project. Click `File` -> `Swift Packages` -> `Add Package Dependency`, enter `https://github.com/LeoNatan/LNInterpolation`. Select the version you’d like to use.

You can also manually add the package to your `Package.swift` file:

```swift
.package(url: "https://github.com/LeoNatan/LNInterpolation.git", from: "1.0")
```

And the dependency in your target:

```swift
.target(name: "BestExampleApp", dependencies: ["LNInterpolation"]),
```

### Carthage

Add the following to your Cartfile:

```github "LeoNatan/LNInterpolation"```

### Manual

Drag the `LNInterpolation.xcodeproj` project to your project, and add `LNInterpolation.framework` to **Embedded Binaries** in your project target's **General** tab. Xcode should sort everything else on its own.
