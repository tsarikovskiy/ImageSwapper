//
//  ImageSwaper.swift
//  ImageSwapper
//
//  Created by Serg Tsarikovskiy on 22.11.17.
//  Copyright © 2017 Serg Tsarikovskiy. All rights reserved.
//

import UIKit

open class ImageSwapper {
    open class func waterDrop(image targetImage: UIImageView, toImage image: UIImage) {
        let keyPath = "path"
        CATransaction.begin()
        let maskDiameter = CGFloat(sqrt(powf(Float(targetImage.bounds.width), 2.0) + powf(Float(targetImage.bounds.width), 2.0)))
        let mask = CAShapeLayer()
        let rect = CGRect(x: 10, y: 10,
                          width: maskDiameter,
                          height: maskDiameter)
        mask.path = UIBezierPath(roundedRect: rect,
                                 cornerRadius: maskDiameter / 2).cgPath
        
        mask.position = CGPoint(x: (targetImage.bounds.width - maskDiameter) / 1.3,
                                y: (targetImage.bounds.height - maskDiameter) / 1.3)
        
        targetImage.layer.mask = mask
        
        let animation = CABasicAnimation(keyPath: keyPath)
        animation.duration = 0.3
        animation.fillMode = kCAFillModeForwards
        animation.isRemovedOnCompletion = false
        
        let newPath = UIBezierPath(roundedRect: CGRect(x: maskDiameter / 2.0,
                                                       y: maskDiameter / 2.0,
                                                       width: 0,
                                                       height: 0),
                                   cornerRadius: 0).cgPath
        
        animation.fromValue = mask.path
        animation.toValue = newPath
        
        CATransaction.setCompletionBlock {
            targetImage.image = image
            animation.fromValue = newPath
            animation.toValue = mask.path
            mask.add(animation, forKey: keyPath)
        }
        
        mask.add(animation, forKey: keyPath)
        CATransaction.commit()
    }
}
