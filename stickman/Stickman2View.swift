//
//  Stickman2View.swift
//  stickman
//
//  Created by Angie Yan on 2019-11-27.
//  Copyright © 2019 Andy Yan. All rights reserved.
//

import UIKit

class Stickman2View: UIView {
    
    override func draw(_ rect: CGRect) {
        let head = UIBezierPath(arcCenter: CGPoint(x: 50, y: 50), radius: 10, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: true)
        head.fill()
        
        let body = UIBezierPath()
        body.move(to: CGPoint(x: 50, y: 55))
        body.addLine(to: CGPoint(x: 50, y: 110))
        body.lineWidth = 3
        body.stroke()
        
        let arm1 = UIBezierPath()
        arm1.move(to: CGPoint(x: 50, y: 70))
        arm1.addLine(to: CGPoint(x: 70, y: 110))
        arm1.lineWidth = 3
        arm1.stroke()
        
        let arm2 = UIBezierPath()
        arm2.move(to: CGPoint(x: 50, y: 70))
        arm2.addLine(to: CGPoint(x: 40, y: 110))
        arm2.lineWidth = 3
        arm2.stroke()
        
        let leg1 = UIBezierPath()
        leg1.move(to: CGPoint(x: 50, y: 110))
        leg1.addLine(to: CGPoint(x: 10, y: 150))
        leg1.lineWidth = 3
        leg1.stroke()
        
        let leg2 = UIBezierPath()
        leg2.move(to: CGPoint(x: 50, y: 110))
        leg2.addLine(to: CGPoint(x: 100, y: 150))
        leg2.lineWidth = 3
        leg2.stroke()
    }
    
 
    
  
    
   

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
  
 

}







