//
//  GradientView.swift
//  #SaveTheWorld
//
//  Created by Tyler Bakke on 7/6/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit

class GradientView: UIView {

    let gradientLayer = CAGradientLayer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
            
            // 1
            self.backgroundColor = UIColor.greenColor()
        
            let start = CGPoint(x: 0.0,y: 0.5)
            let end = CGPoint(x: 1.0,y: 0.5)
            // 2
            gradientLayer.frame = self.bounds
            gradientLayer.startPoint = start
            gradientLayer.endPoint = end
            // 3
            let color2 = UIColor.yellowColor().CGColor as CGColorRef
            let color3 = UIColor(red: 1.0, green: 0, blue: 0, alpha: 1.0).CGColor as CGColorRef
            let color1 = UIColor.clearColor().CGColor as CGColorRef
            gradientLayer.colors = [color3, color2, color1]
            
            // 4
    
            gradientLayer.locations = [0.1, 0.35, 0.79]
            
            // 5
            self.layer.addSublayer(gradientLayer)
            // Do any additional setup after loading the view, typically from a nib.
    }
}
