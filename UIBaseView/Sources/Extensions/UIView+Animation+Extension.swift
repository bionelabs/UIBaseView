//
//  UIView+Animation+Extension.swift
//  UIBaseView
//
//  Created by Cao Phuoc Thanh on 4/25/20.
//  Copyright © 2020 Cao Phuoc Thanh. All rights reserved.
//

import UIKit

extension UIView {
    
    open func pop(_ force: CGFloat = 0.1, completion: (() ->())? = nil) {
        let animation = CAKeyframeAnimation(keyPath: "transform.scale")
        animation.values = [0, -0.1*force, 0.0 ,0.05*force, 0.0]
        animation.keyTimes = [0, 0.2, 0.4, 0.6, 0.8, 1]
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        animation.duration = 0.4
        animation.isAdditive = true
        animation.repeatCount = 1
        animation.isRemovedOnCompletion = true
        self.layer.add(animation, forKey: "pop")
        guard let completion = completion else { return }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2, execute: {
            completion()
        })
    }
    
    open func shake() {
        let animation = CAKeyframeAnimation()
        animation.keyPath = "position.x"
        animation.values = [0, 10, -10, 10, -5, 5, -5, 0 ]
        animation.keyTimes = [0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1]
        animation.duration = 0.8
        animation.isAdditive = true
        self.layer.add(animation, forKey: "shake")
    }
    
    open func fadeTo(_ alpha: CGFloat, duration: TimeInterval? = 0.3) {
        DispatchQueue.main.async {
            UIView.animate(withDuration: duration != nil ? duration! : 0.3) { [weak self] in
                guard let `self` = self else { return }
                self.alpha = alpha
            }
        }
    }
    
    open func fadeIn(_ duration: TimeInterval? = 0.3) {
        fadeTo(1.0, duration: duration)
    }
    
    open func fadeOut(_ duration: TimeInterval? = 0.3) {
        fadeTo(0.0, duration: duration)
    }
}


// MARK: Rotate Animation

extension UIView {
    
    private static let kRotationAnimationKey = "rotationanimationkey"
    
    open func startRotating(duration: Double = 1) {
        if layer.animation(forKey: UIView.kRotationAnimationKey) == nil {
            let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
            rotationAnimation.fromValue = 0.0
            rotationAnimation.toValue = Float.pi * 2.0
            rotationAnimation.duration = duration
            rotationAnimation.repeatCount = Float.infinity
            layer.add(rotationAnimation, forKey: UIView.kRotationAnimationKey)
        }
    }
    
    open func stopRotating() {
        if layer.animation(forKey: UIView.kRotationAnimationKey) != nil {
            self.layer.removeAnimation(forKey: UIView.kRotationAnimationKey)
        }
    }
}

