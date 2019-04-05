//
//  ViewController.swift
//  LNInterpolationExample_macOS
//
//  Created by Leo Natan (Wix) on 4/5/19.
//  Copyright © 2019 Leo Natan. All rights reserved.
//

import Cocoa
import LNInterpolation

extension NSColor {
	static var random: NSColor {
		return NSColor(red: .random(in: 0...1),
					   green: .random(in: 0...1),
					   blue: .random(in: 0...1),
					   alpha: 1.0)
	}
}

class ViewController: NSViewController {
	private var interpolationProgress = 0.0
	private var sourceColor = NSColor.windowBackgroundColor
	private var targetColor = NSColor.random
	
	@IBOutlet private var interpolationLABView: NSBox!
	@IBOutlet private var interpolationRGBView: NSBox!
	@IBOutlet private var coreAnimationView: NSBox!
	var timer: Timer!
	
	override func viewDidAppear() {
		super.viewDidAppear()

		timer = Timer.scheduledTimer(timeInterval: 1.0/60.0, target: self, selector: #selector(timerTick), userInfo: nil, repeats: true)

		NSAnimationContext.runAnimationGroup { context in
			context.allowsImplicitAnimation = true
			context.duration = 1.0
			
			coreAnimationView.animator().fillColor = self.targetColor
		}
	}
	
	@objc private func timerTick() {
		if(interpolationProgress >= 1.0) {
			sourceColor = targetColor
			targetColor = .random
			interpolationProgress = 0.0
			
			NSAnimationContext.runAnimationGroup { context in
				context.allowsImplicitAnimation = true
				context.duration = 1.0
				
				coreAnimationView.animator().fillColor = self.targetColor
			}
		}
		
		interpolationProgress += 1.0/60.0
		
		interpolationLABView.fillColor = sourceColor.interpolate(to: targetColor, progress: interpolationProgress, behavior: .useLABColorSpace)
		interpolationRGBView.fillColor = sourceColor.interpolate(to: targetColor, progress: interpolationProgress, behavior: .useRGBColorSpace)
	}
}

