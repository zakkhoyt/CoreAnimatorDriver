//
// DemonView.swift
// Generated by Core Animator version 1.0.3 on 3/20/15.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

@IBDesignable
class DemonView : UIView {


	var animationCompletions = Dictionary<CAAnimation, (Bool) -> Void>()
	var viewsByName: [String : UIView]!

	// - MARK: Life Cycle

	override init() {
		super.init(frame: CGRect(x: 0, y: 0, width: 423, height: 448))
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
		__scaling__.bounds = CGRect(x:0, y:0, width:423, height:448)
		__scaling__.center = CGPoint(x:211.8, y:224.3)
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let demon = UIView()
		demon.bounds = CGRect(x:0, y:0, width:289.5, height:406.1)
		demon.layer.position = CGPoint(x:178.004, y:218.868)
		__scaling__.addSubview(demon)
		viewsByName["Demon"] = demon

		let neckAndHead = UIView()
		neckAndHead.bounds = CGRect(x:0, y:0, width:240.9, height:220.0)
		neckAndHead.layer.anchorPoint = CGPoint(x:0.921, y:0.747)
		neckAndHead.layer.position = CGPoint(x:221.828, y:164.403)
		demon.addSubview(neckAndHead)
		viewsByName["Neck and Head"] = neckAndHead

		let neck = UIImageView()
		neck.bounds = CGRect(x:0, y:0, width:97.0, height:131.0)
		var imgNeck: UIImage!
		if let imagePath = bundle.pathForResource("neck.png", ofType:nil) {
			imgNeck = UIImage(contentsOfFile:imagePath)
		}
		neck.image = imgNeck
		neck.contentMode = .Center;
		neck.layer.position = CGPoint(x:192.409, y:115.943)
		neckAndHead.addSubview(neck)
		viewsByName["neck"] = neck

		let head = UIView()
		head.bounds = CGRect(x:0, y:0, width:183.9, height:220.0)
		head.layer.anchorPoint = CGPoint(x:0.847, y:0.597)
		head.layer.position = CGPoint(x:155.732, y:131.409)
		head.transform = CGAffineTransformMakeRotation(0.000)
		neckAndHead.addSubview(head)
		viewsByName["Head"] = head

		let jaw = UIImageView()
		jaw.bounds = CGRect(x:0, y:0, width:59.0, height:91.0)
		jaw.layer.anchorPoint = CGPoint(x:0.581, y:0.296)
		var imgJaw: UIImage!
		if let imagePath = bundle.pathForResource("jaw.png", ofType:nil) {
			imgJaw = UIImage(contentsOfFile:imagePath)
		}
		jaw.image = imgJaw
		jaw.contentMode = .Center;
		jaw.layer.position = CGPoint(x:159.164, y:145.507)
		head.addSubview(jaw)
		viewsByName["jaw"] = jaw

		let skull = UIImageView()
		skull.bounds = CGRect(x:0, y:0, width:161.0, height:220.0)
		var imgSkull: UIImage!
		if let imagePath = bundle.pathForResource("skull.png", ofType:nil) {
			imgSkull = UIImage(contentsOfFile:imagePath)
		}
		skull.image = imgSkull
		skull.contentMode = .Center;
		skull.layer.position = CGPoint(x:80.500, y:110.000)
		head.addSubview(skull)
		viewsByName["skull"] = skull

		let body = UIView()
		body.bounds = CGRect(x:0, y:0, width:162.9, height:257.6)
		body.layer.position = CGPoint(x:208.039, y:277.328)
		demon.addSubview(body)
		viewsByName["body"] = body

		let rightLeg = UIView()
		rightLeg.bounds = CGRect(x:0, y:0, width:61.6, height:148.7)
		rightLeg.layer.anchorPoint = CGPoint(x:0.454, y:0.057)
		rightLeg.layer.position = CGPoint(x:101.760, y:117.265)
		body.addSubview(rightLeg)
		viewsByName["Right Leg"] = rightLeg

		let rLegLower = UIImageView()
		rLegLower.bounds = CGRect(x:0, y:0, width:43.0, height:89.0)
		rLegLower.layer.anchorPoint = CGPoint(x:0.293, y:0.068)
		var imgRLegLower: UIImage!
		if let imagePath = bundle.pathForResource("r_leg_lower.png", ofType:nil) {
			imgRLegLower = UIImage(contentsOfFile:imagePath)
		}
		rLegLower.image = imgRLegLower
		rLegLower.contentMode = .Center;
		rLegLower.layer.position = CGPoint(x:31.218, y:65.774)
		rightLeg.addSubview(rLegLower)
		viewsByName["r_leg_lower"] = rLegLower

		let rLegUpper = UIImageView()
		rLegUpper.bounds = CGRect(x:0, y:0, width:46.0, height:78.0)
		var imgRLegUpper: UIImage!
		if let imagePath = bundle.pathForResource("r_leg_upper.png", ofType:nil) {
			imgRLegUpper = UIImage(contentsOfFile:imagePath)
		}
		rLegUpper.image = imgRLegUpper
		rLegUpper.contentMode = .Center;
		rLegUpper.layer.position = CGPoint(x:23.000, y:39.000)
		rightLeg.addSubview(rLegUpper)
		viewsByName["r_leg_upper"] = rLegUpper

		let leftLeg = UIView()
		leftLeg.bounds = CGRect(x:0, y:0, width:38.8, height:120.5)
		leftLeg.layer.anchorPoint = CGPoint(x:0.717, y:0.072)
		leftLeg.layer.position = CGPoint(x:76.181, y:109.482)
		body.addSubview(leftLeg)
		viewsByName["Left Leg"] = leftLeg

		let lLowerLeg = UIImageView()
		lLowerLeg.bounds = CGRect(x:0, y:0, width:37.0, height:77.0)
		lLowerLeg.layer.anchorPoint = CGPoint(x:0.284, y:0.084)
		var imgLLowerLeg: UIImage!
		if let imagePath = bundle.pathForResource("l_lower_leg.png", ofType:nil) {
			imgLLowerLeg = UIImage(contentsOfFile:imagePath)
		}
		lLowerLeg.image = imgLLowerLeg
		lLowerLeg.contentMode = .Center;
		lLowerLeg.layer.position = CGPoint(x:12.284, y:49.956)
		leftLeg.addSubview(lLowerLeg)
		viewsByName["l_lower_leg"] = lLowerLeg

		let leftUpperLeg = UIImageView()
		leftUpperLeg.bounds = CGRect(x:0, y:0, width:37.0, height:66.0)
		var imgLeftUpperLeg: UIImage!
		if let imagePath = bundle.pathForResource("left_upper_leg.png", ofType:nil) {
			imgLeftUpperLeg = UIImage(contentsOfFile:imagePath)
		}
		leftUpperLeg.image = imgLeftUpperLeg
		leftUpperLeg.contentMode = .Center;
		leftUpperLeg.layer.position = CGPoint(x:18.500, y:33.000)
		leftLeg.addSubview(leftUpperLeg)
		viewsByName["left_upper_leg"] = leftUpperLeg

		let rightArm = UIView()
		rightArm.bounds = CGRect(x:0, y:0, width:55.1, height:137.4)
		rightArm.layer.anchorPoint = CGPoint(x:0.385, y:0.126)
		rightArm.layer.position = CGPoint(x:128.994, y:41.361)
		body.addSubview(rightArm)
		viewsByName["Right Arm"] = rightArm

		let rLowerArm = UIImageView()
		rLowerArm.bounds = CGRect(x:0, y:0, width:51.0, height:95.0)
		rLowerArm.layer.anchorPoint = CGPoint(x:0.829, y:0.075)
		var imgRLowerArm: UIImage!
		if let imagePath = bundle.pathForResource("r_lower_arm.png", ofType:nil) {
			imgRLowerArm = UIImage(contentsOfFile:imagePath)
		}
		rLowerArm.image = imgRLowerArm
		rLowerArm.contentMode = .Center;
		rLowerArm.layer.position = CGPoint(x:42.298, y:49.513)
		rightArm.addSubview(rLowerArm)
		viewsByName["r_lower_arm"] = rLowerArm

		let rUpperArm = UIImageView()
		rUpperArm.bounds = CGRect(x:0, y:0, width:51.0, height:65.0)
		rUpperArm.layer.anchorPoint = CGPoint(x:0.252, y:0.248)
		var imgRUpperArm: UIImage!
		if let imagePath = bundle.pathForResource("r_upper_arm.png", ofType:nil) {
			imgRUpperArm = UIImage(contentsOfFile:imagePath)
		}
		rUpperArm.image = imgRUpperArm
		rUpperArm.contentMode = .Center;
		rUpperArm.layer.position = CGPoint(x:16.953, y:16.124)
		rUpperArm.transform = CGAffineTransformMakeRotation(0.017)
		rightArm.addSubview(rUpperArm)
		viewsByName["r_upper_arm"] = rUpperArm

		let leftArm = UIView()
		leftArm.bounds = CGRect(x:0, y:0, width:87.7, height:169.6)
		leftArm.layer.anchorPoint = CGPoint(x:0.834, y:0.089)
		leftArm.layer.position = CGPoint(x:73.170, y:20.910)
		body.addSubview(leftArm)
		viewsByName["Left Arm"] = leftArm

		let leftUpperArm = UIImageView()
		leftUpperArm.bounds = CGRect(x:0, y:0, width:31.0, height:90.0)
		var imgLeftUpperArm: UIImage!
		if let imagePath = bundle.pathForResource("left_upper_arm.png", ofType:nil) {
			imgLeftUpperArm = UIImage(contentsOfFile:imagePath)
		}
		leftUpperArm.image = imgLeftUpperArm
		leftUpperArm.contentMode = .Center;
		leftUpperArm.layer.position = CGPoint(x:72.232, y:45.000)
		leftArm.addSubview(leftUpperArm)
		viewsByName["left_upper_arm"] = leftUpperArm

		let lLowerArm = UIImageView()
		lLowerArm.bounds = CGRect(x:0, y:0, width:84.0, height:102.0)
		lLowerArm.layer.anchorPoint = CGPoint(x:0.869, y:0.064)
		var imgLLowerArm: UIImage!
		if let imagePath = bundle.pathForResource("l_lower_arm.png", ofType:nil) {
			imgLLowerArm = UIImage(contentsOfFile:imagePath)
		}
		lLowerArm.image = imgLLowerArm
		lLowerArm.contentMode = .Center;
		lLowerArm.layer.position = CGPoint(x:73.009, y:74.158)
		leftArm.addSubview(lLowerArm)
		viewsByName["l_lower_arm"] = lLowerArm

		let torso = UIImageView()
		torso.bounds = CGRect(x:0, y:0, width:102.0, height:126.0)
		var imgTorso: UIImage!
		if let imagePath = bundle.pathForResource("torso.png", ofType:nil) {
			imgTorso = UIImage(contentsOfFile:imagePath)
		}
		torso.image = imgTorso
		torso.contentMode = .Center;
		torso.layer.position = CGPoint(x:104.587, y:63.000)
		body.addSubview(torso)
		viewsByName["torso"] = torso

		self.viewsByName = viewsByName
	}

	// - MARK: Ambient

	func addAmbientAnimation() {
		addAmbientAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false)
	}

	func addAmbientAnimation(#removedOnCompletion: Bool) {
		addAmbientAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion)
	}

	func addAmbientAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool) {
		let easeInOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)

		let lLowerArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		lLowerArmRotationAnimation.duration = 0.500
		lLowerArmRotationAnimation.values = [0.000 as Float, -0.070 as Float]
		lLowerArmRotationAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		lLowerArmRotationAnimation.timingFunctions = [easeInOutTiming]
		lLowerArmRotationAnimation.autoreverses = true
		lLowerArmRotationAnimation.repeatCount = HUGE
		lLowerArmRotationAnimation.beginTime = beginTime
		lLowerArmRotationAnimation.fillMode = fillMode
		lLowerArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["l_lower_arm"]?.layer.addAnimation(lLowerArmRotationAnimation, forKey:"Ambient_Rotation")

		let neckAndHeadRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		neckAndHeadRotationAnimation.duration = 0.500
		neckAndHeadRotationAnimation.values = [0.000 as Float, 0.070 as Float]
		neckAndHeadRotationAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		neckAndHeadRotationAnimation.timingFunctions = [easeInOutTiming]
		neckAndHeadRotationAnimation.autoreverses = true
		neckAndHeadRotationAnimation.repeatCount = HUGE
		neckAndHeadRotationAnimation.beginTime = beginTime
		neckAndHeadRotationAnimation.fillMode = fillMode
		neckAndHeadRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Neck and Head"]?.layer.addAnimation(neckAndHeadRotationAnimation, forKey:"Ambient_Rotation")

		let rightArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		rightArmRotationAnimation.duration = 0.500
		rightArmRotationAnimation.values = [0.000 as Float, -0.070 as Float]
		rightArmRotationAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		rightArmRotationAnimation.timingFunctions = [easeInOutTiming]
		rightArmRotationAnimation.autoreverses = true
		rightArmRotationAnimation.repeatCount = HUGE
		rightArmRotationAnimation.beginTime = beginTime
		rightArmRotationAnimation.fillMode = fillMode
		rightArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Right Arm"]?.layer.addAnimation(rightArmRotationAnimation, forKey:"Ambient_Rotation")

		let leftArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		leftArmRotationAnimation.duration = 0.500
		leftArmRotationAnimation.values = [0.000 as Float, 0.070 as Float]
		leftArmRotationAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		leftArmRotationAnimation.timingFunctions = [easeInOutTiming]
		leftArmRotationAnimation.autoreverses = true
		leftArmRotationAnimation.repeatCount = HUGE
		leftArmRotationAnimation.beginTime = beginTime
		leftArmRotationAnimation.fillMode = fillMode
		leftArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Left Arm"]?.layer.addAnimation(leftArmRotationAnimation, forKey:"Ambient_Rotation")

		let torsoScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		torsoScaleXAnimation.duration = 0.500
		torsoScaleXAnimation.values = [1.000 as Float, 1.060 as Float]
		torsoScaleXAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		torsoScaleXAnimation.timingFunctions = [easeInOutTiming]
		torsoScaleXAnimation.autoreverses = true
		torsoScaleXAnimation.repeatCount = HUGE
		torsoScaleXAnimation.beginTime = beginTime
		torsoScaleXAnimation.fillMode = fillMode
		torsoScaleXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["torso"]?.layer.addAnimation(torsoScaleXAnimation, forKey:"Ambient_ScaleX")

		let torsoScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		torsoScaleYAnimation.duration = 0.500
		torsoScaleYAnimation.values = [1.000 as Float, 1.060 as Float]
		torsoScaleYAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		torsoScaleYAnimation.timingFunctions = [easeInOutTiming]
		torsoScaleYAnimation.autoreverses = true
		torsoScaleYAnimation.repeatCount = HUGE
		torsoScaleYAnimation.beginTime = beginTime
		torsoScaleYAnimation.fillMode = fillMode
		torsoScaleYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["torso"]?.layer.addAnimation(torsoScaleYAnimation, forKey:"Ambient_ScaleY")

		let rLowerArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		rLowerArmRotationAnimation.duration = 0.500
		rLowerArmRotationAnimation.values = [0.000 as Float, 0.035 as Float]
		rLowerArmRotationAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		rLowerArmRotationAnimation.timingFunctions = [easeInOutTiming]
		rLowerArmRotationAnimation.autoreverses = true
		rLowerArmRotationAnimation.repeatCount = HUGE
		rLowerArmRotationAnimation.beginTime = beginTime
		rLowerArmRotationAnimation.fillMode = fillMode
		rLowerArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["r_lower_arm"]?.layer.addAnimation(rLowerArmRotationAnimation, forKey:"Ambient_Rotation")

		let jawRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		jawRotationAnimation.duration = 0.500
		jawRotationAnimation.values = [0.000 as Float, -0.070 as Float]
		jawRotationAnimation.keyTimes = [0.000 as Float, 1.000 as Float]
		jawRotationAnimation.timingFunctions = [easeInOutTiming]
		jawRotationAnimation.autoreverses = true
		jawRotationAnimation.repeatCount = HUGE
		jawRotationAnimation.beginTime = beginTime
		jawRotationAnimation.fillMode = fillMode
		jawRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["jaw"]?.layer.addAnimation(jawRotationAnimation, forKey:"Ambient_Rotation")
	}

	func removeAmbientAnimation() {
		self.viewsByName["l_lower_arm"]?.layer.removeAnimationForKey("Ambient_Rotation")
		self.viewsByName["Neck and Head"]?.layer.removeAnimationForKey("Ambient_Rotation")
		self.viewsByName["Right Arm"]?.layer.removeAnimationForKey("Ambient_Rotation")
		self.viewsByName["Left Arm"]?.layer.removeAnimationForKey("Ambient_Rotation")
		self.viewsByName["torso"]?.layer.removeAnimationForKey("Ambient_ScaleX")
		self.viewsByName["torso"]?.layer.removeAnimationForKey("Ambient_ScaleY")
		self.viewsByName["r_lower_arm"]?.layer.removeAnimationForKey("Ambient_Rotation")
		self.viewsByName["jaw"]?.layer.removeAnimationForKey("Ambient_Rotation")
	}

	// - MARK: Bite

	func addBiteAnimation() {
		addBiteAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, nil)
	}

	func addBiteAnimation(completion: ((Bool) -> Void)?) {
		addBiteAnimationWithBeginTime(0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion)
	}

	func addBiteAnimation(#removedOnCompletion: Bool) {
		addBiteAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, nil)
	}

	func addBiteAnimation(#removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addBiteAnimationWithBeginTime(0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion)
	}

	func addBiteAnimationWithBeginTime(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		let easeInTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
		let easeOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 0.650
			representativeAnimation.delegate = self
			self.layer.addAnimation(representativeAnimation, forKey: "Bite")
			self.animationCompletions[layer.animationForKey("Bite")] = complete
		}

		let headRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		headRotationAnimation.duration = 0.650
		headRotationAnimation.values = [0.000 as Float, 0.332 as Float, 0.506 as Float, 0.332 as Float]
		headRotationAnimation.keyTimes = [0.000 as Float, 0.385 as Float, 0.769 as Float, 1.000 as Float]
		headRotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		headRotationAnimation.beginTime = beginTime
		headRotationAnimation.fillMode = fillMode
		headRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Head"]?.layer.addAnimation(headRotationAnimation, forKey:"Bite_Rotation")

		let leftLegRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		leftLegRotationAnimation.duration = 0.650
		leftLegRotationAnimation.values = [0.000 as Float, 0.000 as Float, 0.087 as Float, 0.000 as Float]
		leftLegRotationAnimation.keyTimes = [0.000 as Float, 0.385 as Float, 0.769 as Float, 1.000 as Float]
		leftLegRotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		leftLegRotationAnimation.beginTime = beginTime
		leftLegRotationAnimation.fillMode = fillMode
		leftLegRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Left Leg"]?.layer.addAnimation(leftLegRotationAnimation, forKey:"Bite_Rotation")

		let torsoScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		torsoScaleXAnimation.duration = 0.650
		torsoScaleXAnimation.values = [1.000 as Float, 1.000 as Float, 1.060 as Float, 1.010 as Float]
		torsoScaleXAnimation.keyTimes = [0.000 as Float, 0.385 as Float, 0.769 as Float, 1.000 as Float]
		torsoScaleXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		torsoScaleXAnimation.beginTime = beginTime
		torsoScaleXAnimation.fillMode = fillMode
		torsoScaleXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["torso"]?.layer.addAnimation(torsoScaleXAnimation, forKey:"Bite_ScaleX")

		let torsoScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		torsoScaleYAnimation.duration = 0.650
		torsoScaleYAnimation.values = [1.000 as Float, 1.000 as Float, 1.060 as Float, 1.010 as Float]
		torsoScaleYAnimation.keyTimes = [0.000 as Float, 0.385 as Float, 0.769 as Float, 1.000 as Float]
		torsoScaleYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		torsoScaleYAnimation.beginTime = beginTime
		torsoScaleYAnimation.fillMode = fillMode
		torsoScaleYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["torso"]?.layer.addAnimation(torsoScaleYAnimation, forKey:"Bite_ScaleY")

		let lLowerLegRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		lLowerLegRotationAnimation.duration = 0.650
		lLowerLegRotationAnimation.values = [0.000 as Float, 0.000 as Float, -0.087 as Float, 0.000 as Float]
		lLowerLegRotationAnimation.keyTimes = [0.000 as Float, 0.385 as Float, 0.769 as Float, 1.000 as Float]
		lLowerLegRotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		lLowerLegRotationAnimation.beginTime = beginTime
		lLowerLegRotationAnimation.fillMode = fillMode
		lLowerLegRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["l_lower_leg"]?.layer.addAnimation(lLowerLegRotationAnimation, forKey:"Bite_Rotation")

		let rLowerArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		rLowerArmRotationAnimation.duration = 0.650
		rLowerArmRotationAnimation.values = [0.000 as Float, 0.000 as Float, 0.140 as Float, -0.000 as Float]
		rLowerArmRotationAnimation.keyTimes = [0.000 as Float, 0.385 as Float, 0.769 as Float, 1.000 as Float]
		rLowerArmRotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		rLowerArmRotationAnimation.beginTime = beginTime
		rLowerArmRotationAnimation.fillMode = fillMode
		rLowerArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["r_lower_arm"]?.layer.addAnimation(rLowerArmRotationAnimation, forKey:"Bite_Rotation")

		let lLowerArmRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		lLowerArmRotationAnimation.duration = 0.650
		lLowerArmRotationAnimation.values = [0.000 as Float, 0.000 as Float, 0.122 as Float, -0.000 as Float]
		lLowerArmRotationAnimation.keyTimes = [0.000 as Float, 0.385 as Float, 0.769 as Float, 1.000 as Float]
		lLowerArmRotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		lLowerArmRotationAnimation.beginTime = beginTime
		lLowerArmRotationAnimation.fillMode = fillMode
		lLowerArmRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["l_lower_arm"]?.layer.addAnimation(lLowerArmRotationAnimation, forKey:"Bite_Rotation")

		let neckAndHeadRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		neckAndHeadRotationAnimation.duration = 0.650
		neckAndHeadRotationAnimation.values = [0.000 as Float, 0.105 as Float, -0.035 as Float, 0.105 as Float]
		neckAndHeadRotationAnimation.keyTimes = [0.000 as Float, 0.385 as Float, 0.769 as Float, 1.000 as Float]
		neckAndHeadRotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		neckAndHeadRotationAnimation.beginTime = beginTime
		neckAndHeadRotationAnimation.fillMode = fillMode
		neckAndHeadRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Neck and Head"]?.layer.addAnimation(neckAndHeadRotationAnimation, forKey:"Bite_Rotation")

		let demonTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		demonTranslationXAnimation.duration = 0.650
		demonTranslationXAnimation.values = [0.000 as Float, 0.000 as Float, -7.000 as Float, 0.000 as Float]
		demonTranslationXAnimation.keyTimes = [0.000 as Float, 0.385 as Float, 0.769 as Float, 1.000 as Float]
		demonTranslationXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		demonTranslationXAnimation.beginTime = beginTime
		demonTranslationXAnimation.fillMode = fillMode
		demonTranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["Demon"]?.layer.addAnimation(demonTranslationXAnimation, forKey:"Bite_TranslationX")

		let jawRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		jawRotationAnimation.duration = 0.650
		jawRotationAnimation.values = [0.000 as Float, -0.297 as Float, 0.157 as Float, -0.297 as Float]
		jawRotationAnimation.keyTimes = [0.000 as Float, 0.385 as Float, 0.769 as Float, 1.000 as Float]
		jawRotationAnimation.timingFunctions = [linearTiming, easeInTiming, easeOutTiming]
		jawRotationAnimation.beginTime = beginTime
		jawRotationAnimation.fillMode = fillMode
		jawRotationAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["jaw"]?.layer.addAnimation(jawRotationAnimation, forKey:"Bite_Rotation")

		let jawTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		jawTranslationXAnimation.duration = 0.650
		jawTranslationXAnimation.values = [0.000 as Float, 5.997 as Float, -9.757 as Float, 0.000 as Float]
		jawTranslationXAnimation.keyTimes = [0.000 as Float, 0.385 as Float, 0.769 as Float, 1.000 as Float]
		jawTranslationXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		jawTranslationXAnimation.beginTime = beginTime
		jawTranslationXAnimation.fillMode = fillMode
		jawTranslationXAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["jaw"]?.layer.addAnimation(jawTranslationXAnimation, forKey:"Bite_TranslationX")

		let jawTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		jawTranslationYAnimation.duration = 0.650
		jawTranslationYAnimation.values = [0.000 as Float, 3.747 as Float, -9.550 as Float, 0.000 as Float]
		jawTranslationYAnimation.keyTimes = [0.000 as Float, 0.385 as Float, 0.769 as Float, 1.000 as Float]
		jawTranslationYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		jawTranslationYAnimation.beginTime = beginTime
		jawTranslationYAnimation.fillMode = fillMode
		jawTranslationYAnimation.removedOnCompletion = removedOnCompletion
		self.viewsByName["jaw"]?.layer.addAnimation(jawTranslationYAnimation, forKey:"Bite_TranslationY")
	}

	func removeBiteAnimation() {
		self.layer.removeAnimationForKey("Bite")
		self.viewsByName["Head"]?.layer.removeAnimationForKey("Bite_Rotation")
		self.viewsByName["Left Leg"]?.layer.removeAnimationForKey("Bite_Rotation")
		self.viewsByName["torso"]?.layer.removeAnimationForKey("Bite_ScaleX")
		self.viewsByName["torso"]?.layer.removeAnimationForKey("Bite_ScaleY")
		self.viewsByName["l_lower_leg"]?.layer.removeAnimationForKey("Bite_Rotation")
		self.viewsByName["r_lower_arm"]?.layer.removeAnimationForKey("Bite_Rotation")
		self.viewsByName["l_lower_arm"]?.layer.removeAnimationForKey("Bite_Rotation")
		self.viewsByName["Neck and Head"]?.layer.removeAnimationForKey("Bite_Rotation")
		self.viewsByName["Demon"]?.layer.removeAnimationForKey("Bite_TranslationX")
		self.viewsByName["jaw"]?.layer.removeAnimationForKey("Bite_Rotation")
		self.viewsByName["jaw"]?.layer.removeAnimationForKey("Bite_TranslationX")
		self.viewsByName["jaw"]?.layer.removeAnimationForKey("Bite_TranslationY")
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
		self.layer.removeAnimationForKey("Bite")
	}
}