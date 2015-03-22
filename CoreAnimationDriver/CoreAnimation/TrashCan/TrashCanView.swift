//
// TrashCanView.swift
// Generated by Core Animator version 1.0.3 on 3/20/15.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

@IBDesignable
class TrashCanView : UIView {


	var animationCompletions = Dictionary<CAAnimation, (Bool) -> Void>()
	var viewsByName: [String : UIView]!

	// - MARK: Life Cycle

	override init() {
		super.init(frame: CGRect(x: 0, y: 0, width: 106, height: 141))
		self.setupHierarchy()

	}

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.setupHierarchy()
	}

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		self.setupHierarchy()
	}

	// - MARK: Scaling

	override func layoutSubviews() {
		super.layoutSubviews()

		if let scalingView = self.viewsByName["__scaling__"] {
			var xScale = self.bounds.size.width / scalingView.bounds.size.width
			var yScale = self.bounds.size.height / scalingView.bounds.size.height
			switch contentMode {
			case .ScaleToFill:
				break
			case .ScaleAspectFill:
				let scale = max(xScale, yScale)
				xScale = scale
				yScale = scale
			default:
				let scale = min(xScale, yScale)
				xScale = scale
				yScale = scale
			}
			scalingView.transform = CGAffineTransformMakeScale(xScale, yScale)
			scalingView.center = CGPoint(x:CGRectGetMidX(self.bounds), y:CGRectGetMidY(self.bounds))
		}
	}

	// - MARK: Setup

	func setupHierarchy() {
		var viewsByName: [String : UIView] = [:]
		let bundle = NSBundle(forClass:self.dynamicType)
		let __scaling__ = UIView()
		__scaling__.bounds = CGRect(x:0, y:0, width:106, height:141)
		__scaling__.center = CGPoint(x:53.5, y:70.9)
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let untitled = UIView()
		untitled.bounds = CGRect(x:0, y:0, width:93.0, height:127.5)
		untitled.layer.position = CGPoint(x:52.988, y:73.250)
		__scaling__.addSubview(untitled)
		viewsByName["Untitled"] = untitled

		let trash = UIImageView()
		trash.bounds = CGRect(x:0, y:0, width:82.0, height:110.0)
		var imgTrash: UIImage!
		if let imagePath = bundle.pathForResource("trash.png", ofType:nil) {
			imgTrash = UIImage(contentsOfFile:imagePath)
		}
		trash.image = imgTrash
		trash.contentMode = .Center;
		trash.layer.position = CGPoint(x:46.500, y:72.466)
		untitled.addSubview(trash)
		viewsByName["trash"] = trash

		let trashlid = UIImageView()
		trashlid.bounds = CGRect(x:0, y:0, width:93.0, height:18.0)
		trashlid.layer.anchorPoint = CGPoint(x:0.007, y:0.848)
		var imgTrashlid: UIImage!
		if let imagePath = bundle.pathForResource("trashlid.png", ofType:nil) {
			imgTrashlid = UIImage(contentsOfFile:imagePath)
		}
		trashlid.image = imgTrashlid
		trashlid.contentMode = .Center;
		trashlid.layer.position = CGPoint(x:0.686, y:15.265)
		untitled.addSubview(trashlid)
		viewsByName["trashlid"] = trashlid

		self.viewsByName = viewsByName
	}

	// - MARK: OpenLid

	func addOpenLidAnimation() {
		addOpenLidAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, nil)
	}

	func addOpenLidAnimation(completion: ((Bool) -> Void)?) {
		addOpenLidAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion)
	}

	func addOpenLidAnimation(#removedOnCompletion: Bool) {
		addOpenLidAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, nil)
	}

	func addOpenLidAnimation(#removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addOpenLidAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion)
	}

	func addOpenLidAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let easeInOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		let overshootTiming = CAMediaTimingFunction(controlPoints: 0.00, 0.00, 0.58, 1.30)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 0.500
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "OpenLid")
			self.animationCompletions[layer.animationForKey("OpenLid")] = complete
		}

		let trashlidRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		trashlidRotationAnimation.duration = 0.500
		trashlidRotationAnimation.values = [0.000 as Float, -1.745 as Float]
		trashlidRotationAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		trashlidRotationAnimation.timingFunctions = [overshootTiming]
		trashlidRotationAnimation.beginTime = beginTime
		trashlidRotationAnimation.fillMode = fillMode
		trashlidRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["trashlid"]?.layer.addAnimation(trashlidRotationAnimation, forKey:"OpenLid_Rotation")

		let trashlidScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		trashlidScaleXAnimation.duration = 0.500
		trashlidScaleXAnimation.values = [1.000 as Float, 1.210 as Float]
		trashlidScaleXAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		trashlidScaleXAnimation.timingFunctions = [easeInOutTiming]
		trashlidScaleXAnimation.beginTime = beginTime
		trashlidScaleXAnimation.fillMode = fillMode
		trashlidScaleXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["trashlid"]?.layer.addAnimation(trashlidScaleXAnimation, forKey:"OpenLid_ScaleX")

		let trashlidScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		trashlidScaleYAnimation.duration = 0.500
		trashlidScaleYAnimation.values = [1.000 as Float, 1.210 as Float]
		trashlidScaleYAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		trashlidScaleYAnimation.timingFunctions = [easeInOutTiming]
		trashlidScaleYAnimation.beginTime = beginTime
		trashlidScaleYAnimation.fillMode = fillMode
		trashlidScaleYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["trashlid"]?.layer.addAnimation(trashlidScaleYAnimation, forKey:"OpenLid_ScaleY")

		let trashOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		trashOpacityAnimation.duration = 0.500
		trashOpacityAnimation.values = [1.000 as Float, 1.000 as Float, 1.000 as Float]
		trashOpacityAnimation.keyTimes = [0.000 as Float, 0.514 as Float, 1.000 as Float]
		trashOpacityAnimation.timingFunctions = [linearTiming, linearTiming]
		trashOpacityAnimation.beginTime = beginTime
		trashOpacityAnimation.fillMode = fillMode
		trashOpacityAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["trash"]?.layer.addAnimation(trashOpacityAnimation, forKey:"OpenLid_Opacity")

		let trashScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		trashScaleXAnimation.duration = 0.500
		trashScaleXAnimation.values = [1.000 as Float, 1.210 as Float]
		trashScaleXAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		trashScaleXAnimation.timingFunctions = [easeInOutTiming]
		trashScaleXAnimation.beginTime = beginTime
		trashScaleXAnimation.fillMode = fillMode
		trashScaleXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["trash"]?.layer.addAnimation(trashScaleXAnimation, forKey:"OpenLid_ScaleX")

		let trashScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		trashScaleYAnimation.duration = 0.500
		trashScaleYAnimation.values = [1.000 as Float, 1.210 as Float]
		trashScaleYAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		trashScaleYAnimation.timingFunctions = [easeInOutTiming]
		trashScaleYAnimation.beginTime = beginTime
		trashScaleYAnimation.fillMode = fillMode
		trashScaleYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["trash"]?.layer.addAnimation(trashScaleYAnimation, forKey:"OpenLid_ScaleY")
	}

	func removeOpenLidAnimation() {
		self.layer.removeAnimationForKey("OpenLid")
		self.viewsByName["trashlid"]?.layer.removeAnimationForKey("OpenLid_Rotation")
		self.viewsByName["trashlid"]?.layer.removeAnimationForKey("OpenLid_ScaleX")
		self.viewsByName["trashlid"]?.layer.removeAnimationForKey("OpenLid_ScaleY")
		self.viewsByName["trash"]?.layer.removeAnimationForKey("OpenLid_Opacity")
		self.viewsByName["trash"]?.layer.removeAnimationForKey("OpenLid_ScaleX")
		self.viewsByName["trash"]?.layer.removeAnimationForKey("OpenLid_ScaleY")
	}

	// - MARK: CloseLid

	func addCloseLidAnimation() {
		addCloseLidAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, nil)
	}

	func addCloseLidAnimation(completion: ((Bool) -> Void)?) {
		addCloseLidAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion)
	}

	func addCloseLidAnimation(#removedOnCompletion: Bool) {
		addCloseLidAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, nil)
	}

	func addCloseLidAnimation(#removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addCloseLidAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion)
	}

	func addCloseLidAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let easeInOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
		let overshootTiming = CAMediaTimingFunction(controlPoints: 0.00, 0.00, 0.58, 1.30)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 0.500
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "CloseLid")
			self.animationCompletions[layer.animationForKey("CloseLid")] = complete
		}

		let trashlidRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		trashlidRotationAnimation.duration = 0.500
		trashlidRotationAnimation.values = [-1.745 as Float, 0.000 as Float]
		trashlidRotationAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		trashlidRotationAnimation.timingFunctions = [overshootTiming]
		trashlidRotationAnimation.beginTime = beginTime
		trashlidRotationAnimation.fillMode = fillMode
		trashlidRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["trashlid"]?.layer.addAnimation(trashlidRotationAnimation, forKey:"CloseLid_Rotation")

		let trashlidScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		trashlidScaleXAnimation.duration = 0.500
		trashlidScaleXAnimation.values = [1.210 as Float, 1.000 as Float]
		trashlidScaleXAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		trashlidScaleXAnimation.timingFunctions = [easeInOutTiming]
		trashlidScaleXAnimation.beginTime = beginTime
		trashlidScaleXAnimation.fillMode = fillMode
		trashlidScaleXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["trashlid"]?.layer.addAnimation(trashlidScaleXAnimation, forKey:"CloseLid_ScaleX")

		let trashlidScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		trashlidScaleYAnimation.duration = 0.500
		trashlidScaleYAnimation.values = [1.210 as Float, 1.000 as Float]
		trashlidScaleYAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		trashlidScaleYAnimation.timingFunctions = [easeInOutTiming]
		trashlidScaleYAnimation.beginTime = beginTime
		trashlidScaleYAnimation.fillMode = fillMode
		trashlidScaleYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["trashlid"]?.layer.addAnimation(trashlidScaleYAnimation, forKey:"CloseLid_ScaleY")

		let trashScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		trashScaleXAnimation.duration = 0.500
		trashScaleXAnimation.values = [1.210 as Float, 1.000 as Float]
		trashScaleXAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		trashScaleXAnimation.timingFunctions = [easeInOutTiming]
		trashScaleXAnimation.beginTime = beginTime
		trashScaleXAnimation.fillMode = fillMode
		trashScaleXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["trash"]?.layer.addAnimation(trashScaleXAnimation, forKey:"CloseLid_ScaleX")

		let trashScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		trashScaleYAnimation.duration = 0.500
		trashScaleYAnimation.values = [1.210 as Float, 1.000 as Float]
		trashScaleYAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		trashScaleYAnimation.timingFunctions = [easeInOutTiming]
		trashScaleYAnimation.beginTime = beginTime
		trashScaleYAnimation.fillMode = fillMode
		trashScaleYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["trash"]?.layer.addAnimation(trashScaleYAnimation, forKey:"CloseLid_ScaleY")
	}

	func removeCloseLidAnimation() {
		self.layer.removeAnimationForKey("CloseLid")
		self.viewsByName["trashlid"]?.layer.removeAnimationForKey("CloseLid_Rotation")
		self.viewsByName["trashlid"]?.layer.removeAnimationForKey("CloseLid_ScaleX")
		self.viewsByName["trashlid"]?.layer.removeAnimationForKey("CloseLid_ScaleY")
		self.viewsByName["trash"]?.layer.removeAnimationForKey("CloseLid_ScaleX")
		self.viewsByName["trash"]?.layer.removeAnimationForKey("CloseLid_ScaleY")
	}

	override func animationDidStop(anim: CAAnimation!, finished flag: Bool) {
		if let completion = self.animationCompletions[anim] {
			self.animationCompletions.removeValueForKey(anim)
			completion(flag)
		}
	}

	func removeAllAnimations() {
		for subview in viewsByName.values {
			subview.layer.removeAllAnimations()
		}
		self.layer.removeAnimationForKey("OpenLid")
		self.layer.removeAnimationForKey("CloseLid")
	}
}