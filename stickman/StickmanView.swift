//
//  StickmanView.swift
//  stickman
//
//  Created by Angie Yan on 2019-11-25.
//  Copyright © 2019 Andy Yan. All rights reserved.
//

import UIKit

class StickmanView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        let head = UIBezierPath(arcCenter: CGPoint(x: 50, y: 50), radius: 10, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        head.fill()
        
        let body = UIBezierPath()
        body.move(to: CGPoint(x: 50, y: 50))
        body.addLine(to: CGPoint(x: 100, y: 100))
        body.lineWidth = 3
        body.stroke()
        
        
        // Drawing code
    }
 

}
