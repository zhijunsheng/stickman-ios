//
//  StickmanView.swift
//  stickman
//
//  Created by Andy Yan on 2019-11-26.
//  Copyright © 2019 Andy Yan. All rights reserved.
//

import UIKit

class StickmanView: UIView {

    override func draw(_ rect: CGRect) {
        drawBody()
        drawLeftArm()
        drawRightArm()
        drawLeftLeg()
        drawRightLeg()
        drawHead()
    }
    
    func drawBody() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 120, y: 50))
        path.addLine(to: CGPoint(x: 120, y: 180))
        path.stroke()
    }
    
    func drawLeftArm() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 120, y: 90))
        path.addLine(to: CGPoint(x: 90, y: 120))
        path.move(to: CGPoint(x: 90, y: 120))
        path.addLine(to: CGPoint(x: 60, y: 105))
        path.move(to: CGPoint(x: 60, y: 105))
        path.addLine(to: CGPoint(x: 65, y: 115))
        path.stroke()
    }
    
    func drawRightArm() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 120, y: 90))
        path.addLine(to: CGPoint(x: 150, y: 120))
        path.move(to: CGPoint(x: 150, y: 120))
        path.addLine(to: CGPoint(x: 130, y: 140))
        path.move(to: CGPoint(x: 130, y: 140))
        path.addLine(to: CGPoint(x: 130, y: 150))
        path.stroke()
    }
    
    func drawLeftLeg()  {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 120, y: 180))
        path.addLine(to: CGPoint(x: 100, y: 220))
        path.move(to: CGPoint(x: 100, y: 220))
        path.addLine(to: CGPoint(x: 100, y: 260))
        path.stroke()
    }
    
    func drawRightLeg()  {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 100, y: 260))
        path.addLine(to: CGPoint(x: 100, y: 270))
        path.move(to: CGPoint(x: 120, y: 180))
        path.addLine(to: CGPoint(x: 170, y: 200))
        path.move(to: CGPoint(x: 170, y: 200))
        path.addLine(to: CGPoint(x: 190, y: 250))
        path.move(to: CGPoint(x: 190, y: 250))
        path.addLine(to: CGPoint(x: 190, y: 270))
        path.stroke()
    }
    
    func drawHead()  {
        let path = UIBezierPath(arcCenter: CGPoint(x: 120, y: 50), radius: 25, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        path.fill()
    }
}
