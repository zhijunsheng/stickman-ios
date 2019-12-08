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
        let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 120, y: 50))
        pencil.addLine(to: CGPoint(x: 120, y: 180))
        pencil.move(to: CGPoint(x: 120, y: 90))
        pencil.addLine(to: CGPoint(x: 90, y: 120))
        pencil.move(to: CGPoint(x: 120, y: 90))
        pencil.addLine(to: CGPoint(x: 150, y: 120))
        pencil.move(to: CGPoint(x: 90, y: 120))
        pencil.addLine(to: CGPoint(x: 60, y: 105))
        pencil.move(to: CGPoint(x: 60, y: 105))
        pencil.addLine(to: CGPoint(x: 65, y: 115))
        pencil.move(to: CGPoint(x: 150, y: 120))
        pencil.addLine(to: CGPoint(x: 130, y: 140))
        pencil.move(to: CGPoint(x: 130, y: 140))
        pencil.addLine(to: CGPoint(x: 130, y: 150))
        pencil.move(to: CGPoint(x: 120, y: 180))
        pencil.addLine(to: CGPoint(x: 100, y: 220))
        pencil.move(to: CGPoint(x: 100, y: 220))
        pencil.addLine(to: CGPoint(x: 100, y: 260))
        pencil.move(to: CGPoint(x: 100, y: 260))
        pencil.addLine(to: CGPoint(x: 100, y: 270))
        pencil.move(to: CGPoint(x: 120, y: 180))
        pencil.addLine(to: CGPoint(x: 170, y: 200))
        pencil.move(to: CGPoint(x: 170, y: 200))
        pencil.addLine(to: CGPoint(x: 190, y: 250))
        pencil.move(to: CGPoint(x: 190, y: 250))
        pencil.addLine(to: CGPoint(x: 190, y: 270))
        pencil.stroke()
        
        let circle = UIBezierPath(arcCenter: CGPoint(x: 120, y: 50), radius: 25, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle.fill()
    }
    
}
