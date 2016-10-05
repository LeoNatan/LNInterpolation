import Foundation
import LNInterpolationFramework

let smallRect = NSMakeRect(0, 0, 20, 20)
let largeRect = NSMakeRect(20, 20, 100, 100)

NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.05).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.1).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.15).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.2).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.25).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.3).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.35).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.4).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.45).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.5).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.55).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.6).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.65).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.7).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.75).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.8).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.85).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.9).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 0.95).rectValue
NSValue(rect: smallRect).interpolate(to: NSValue(rect: largeRect), progress: 1.0).rectValue