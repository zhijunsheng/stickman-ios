//
//  CanvasView.swift
//  stickman
//
//  Created by 吴淑雅 on 2021-05-18.
//  Copyright © 2021 Andy Yan. All rights reserved.
//

import UIKit

class CanvasView: UIView {

    var show1 = true
    
    
    override func draw(_ rect: CGRect) {
        
        if show1 {
            drawStickman1()
        } else {
            drawStickman2()
        }
        
        drawPointer()
    }
 
    func drawStickman1() {
        let head = UIBezierPath(arcCenter: CGPoint(x: 365, y: 200), radius: 50, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setFill()
        head.fill()
        head.lineWidth = 5
        head.stroke()
        
        let body = UIBezierPath()
        body.move(to: CGPoint(x: 365, y: 250))
        body.addLine(to: CGPoint(x: 365, y: 400))
        body.lineWidth = 5
        body.stroke()
        
        let leftLeg = UIBezierPath()
        leftLeg.move(to: CGPoint(x: 365, y: 400))
        leftLeg.addLine(to: CGPoint(x: 250, y: 500))
        leftLeg.lineWidth = 5
        leftLeg.stroke()
        
        let rightLeg = UIBezierPath()
        rightLeg.move(to: CGPoint(x: 365, y: 400))
        rightLeg.addLine(to: CGPoint(x: 480, y: 500))
        rightLeg.lineWidth = 5
        rightLeg.stroke()
        
        let leftArm = UIBezierPath()
        leftArm.move(to: CGPoint(x: 365, y: 315))
        leftArm.addLine(to: CGPoint(x: 365 - 100, y: 275))
        leftArm.lineWidth = 5
        leftArm.stroke()
        
        let rightArm = UIBezierPath()
        rightArm.move(to: CGPoint(x: 365, y: 315))
        rightArm.addLine(to: CGPoint(x: 365 + 100, y: 275))
        rightArm.lineWidth = 5
        rightArm.stroke()
        
        let leftEye = UIBezierPath(arcCenter: CGPoint(x: 350, y: 180), radius: 10, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        leftEye.lineWidth = 5
        leftEye.stroke()
    }
    
    func drawStickman2() {
        let head = UIBezierPath(arcCenter: CGPoint(x: 365, y: 200), radius: 50, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1).setStroke()
        #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1).setFill()
        head.fill()
        head.lineWidth = 5
        head.stroke()
        
        let body = UIBezierPath()
        body.move(to: CGPoint(x: 365, y: 250))
        body.addLine(to: CGPoint(x: 365, y: 400))
        body.lineWidth = 5
        body.stroke()
        
        let leftLeg = UIBezierPath()
        leftLeg.move(to: CGPoint(x: 365, y: 400))
        leftLeg.addLine(to: CGPoint(x: 250, y: 500))
        leftLeg.lineWidth = 5
        leftLeg.stroke()
        
        let rightLeg = UIBezierPath()
        rightLeg.move(to: CGPoint(x: 365, y: 400))
        rightLeg.addLine(to: CGPoint(x: 480, y: 500))
        rightLeg.lineWidth = 5
        rightLeg.stroke()
        
        let leftArm = UIBezierPath()
        leftArm.move(to: CGPoint(x: 365, y: 315))
        leftArm.addLine(to: CGPoint(x: 365 - 100, y: 275))
        leftArm.lineWidth = 5
        leftArm.stroke()
        
        let rightArm = UIBezierPath()
        rightArm.move(to: CGPoint(x: 365, y: 315))
        rightArm.addLine(to: CGPoint(x: 365 + 100, y: 275 + 25))
        rightArm.lineWidth = 5
        rightArm.stroke()
        
        let leftEye = UIBezierPath()
        leftEye.move(to: CGPoint(x: 350 - 10, y: 180))
        leftEye.addLine(to: CGPoint(x: 350 + 10, y: 180))
        leftEye.lineWidth = 5
        leftEye.stroke()
    }
    
    func drawPointer() {
        let pointer = UIBezierPath()
        pointer.move(to: CGPoint(x: 365, y: 145))
        pointer.addLine(to: CGPoint(x: 355, y: 90))
        pointer.lineWidth = 5
        pointer.stroke()
    }
}
