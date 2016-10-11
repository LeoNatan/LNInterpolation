import Foundation
import LNInterpolation

let smallRect = NSRect(x: 0.0, y: 0.0, width: 20.0, height: 20.0)
let largeRect = NSRect(x: 20.0, y: 20.0, width: 100.0, height: 100.0)

(smallRect as NSValue).interpolate(to: largeRect, progress: 0.1)
(smallRect as NSValue).interpolate(to: largeRect, progress: 0.2)
(smallRect as NSValue).interpolate(to: largeRect, progress: 0.3)
(smallRect as NSValue).interpolate(to: largeRect, progress: 0.4)
(smallRect as NSValue).interpolate(to: largeRect, progress: 0.5)
(smallRect as NSValue).interpolate(to: largeRect, progress: 0.6)
(smallRect as NSValue).interpolate(to: largeRect, progress: 0.7)
(smallRect as NSValue).interpolate(to: largeRect, progress: 0.8)
(smallRect as NSValue).interpolate(to: largeRect, progress: 0.9)
(smallRect as NSValue).interpolate(to: largeRect, progress: 1.0)