//
//  StickmanView2.swift
//  MovingBlock
//
//  Created by Peter Shi on 2019-12-06.
//  Copyright © 2019 Peter Shi. All rights reserved.
//

import UIKit

class StickmanView2: UIView {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func draw(_ rect: CGRect) {
        let head = UIBezierPath(arcCenter: CGPoint(x: 50, y: 50), radius: 10, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        head.lineWidth = 3
        
        let body = UIBezierPath()
        
        body.move(to: CGPoint(x: 50, y: 60))
        body.addLine(to: CGPoint(x: 50, y: 90))
        body.addLine(to: CGPoint(x: 40, y: 115))
        body.move(to: CGPoint(x: 50, y: 90))
        body.addLine(to: CGPoint(x: 55, y: 115))
        body.move(to: CGPoint(x: 50, y: 65))
        body.addLine(to: CGPoint(x: 35, y: 85))
        body.move(to: CGPoint(x: 50, y: 65))
        body.addLine(to: CGPoint(x: 65, y: 85))
        
        body.lineWidth = 3
        
        head.stroke()
        body.stroke()
    }

}
