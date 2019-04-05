//
//  ViewController.swift
//  LNInterpolationExample_iOS
//
//  Created by Leo Natan (Wix) on 4/5/19.
//  Copyright © 2019 Leo Natan. All rights reserved.
//

import UIKit
import LNInterpolation

extension UIColor {
	static var random: UIColor {
		return UIColor(red: .random(in: 0...1),
					   green: .random(in: 0...1),
					   blue: .random(in: 0...1),
					   alpha: 1.0)
	}
}

class ViewController: UIViewController {
	private var interpolationProgress = 0.0
	private var sourceColor = UIColor.white
	private var targetColor = UIColor.random
	
	@IBOutlet private var interpolationLABView : UIView!
	@IBOutlet private var interpolationRGBView : UIView!
	@IBOutlet private var coreAnimationView : UIView!
	private var displayLink : CADisplayLink!
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		displayLink = CADisplayLink(target: self, selector: #selector(displayLinkTick))
		displayLink.add(to: .current, forMode: .common)
		
		UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
			self.coreAnimationView.backgroundColor = self.targetColor
		}, completion: nil)
	}
	
	@objc private func displayLinkTick() {
		if(interpolationProgress >= 1.0) {
			sourceColor = targetColor
			targetColor = .random
			interpolationProgress = 0.0
			
			UIView.animate(withDuration: 1.0, delay: 0.0, options: [.curveLinear], animations: {
				self.coreAnimationView.backgroundColor = self.targetColor
			}, completion: nil)
		}
		
		interpolationProgress += 1.0/60.0
		
		interpolationLABView.backgroundColor = sourceColor.interpolate(to: targetColor, progress: interpolationProgress, behavior: .useLABColorSpace)
		interpolationRGBView.backgroundColor = sourceColor.interpolate(to: targetColor, progress: interpolationProgress, behavior: .useRGBColorSpace)
	}
}

