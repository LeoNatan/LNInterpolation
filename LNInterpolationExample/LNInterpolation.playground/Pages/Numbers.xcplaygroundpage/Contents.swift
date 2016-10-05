import Foundation
import LNInterpolationFramework

let a : NSNumber = 20
let b : NSNumber = 100

a.interpolate(to: b, progress: 0.5)

let c : NSNumber = 1.1
let d : NSNumber = 3.3

c.interpolate(to: d, progress: 0.2)

let e = NSDecimalNumber(string: "10e10")
let f = NSDecimalNumber(string: "10e20")

e.interpolate(to: f, progress: 0.7)