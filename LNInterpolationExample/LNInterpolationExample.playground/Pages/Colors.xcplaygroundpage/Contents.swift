import AppKit
import CoreGraphics
import LNInterpolation
import PlaygroundSupport

let fromColor = #colorLiteral(red: 1, green: 1, blue: 0, alpha: 1)
let toColor   = #colorLiteral(red: 0, green: 0, blue: 1, alpha: 1)

fromColor.interpolate(to: toColor, progress: 0.0)
fromColor.interpolate(to: toColor, progress: 0.1)
fromColor.interpolate(to: toColor, progress: 0.2)
fromColor.interpolate(to: toColor, progress: 0.3)
fromColor.interpolate(to: toColor, progress: 0.4)
fromColor.interpolate(to: toColor, progress: 0.5)
fromColor.interpolate(to: toColor, progress: 0.6)
fromColor.interpolate(to: toColor, progress: 0.7)
fromColor.interpolate(to: toColor, progress: 0.8)
fromColor.interpolate(to: toColor, progress: 0.9)
fromColor.interpolate(to: toColor, progress: 1.0)

let width  = 512
let height = 300

func imageWith(behavior: InterpolationBehavior) -> NSImage {
	let ctx = CGContext(data: nil, width: width, height: height, bitsPerComponent: 8,
	                    bytesPerRow: 0, space: NSColorSpace.sRGB.cgColorSpace!,
	                    bitmapInfo: CGImageAlphaInfo.premultipliedFirst.rawValue)!
	
	ctx.setLineWidth(1.0)
	
	for p in stride(from: 0.0, through: 1.0, by: 1.0 / Double(width - 1)) {
		let interpolatedColor = fromColor.interpolate(to: toColor, progress: p, behavior: behavior)
		ctx.setStrokeColor(interpolatedColor.cgColor)
		ctx.move(to: CGPoint(x: p * Double(ctx.width - 1), y: 0.0))
		ctx.addLine(to: CGPoint(x: p * Double(ctx.width - 1), y: Double(height)))
		ctx.strokePath()
	}
	
	return NSImage(cgImage: ctx.makeImage()!, size: NSSize(width: width, height: height))
}

imageWith(behavior: .useDefault)

imageWith(behavior: .useRGBColorSpace)
