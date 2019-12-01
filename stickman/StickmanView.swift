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
        pencil.addLine(to: CGPoint(x: 120, y: 150))
        pencil.move(to: CGPoint(x: 70, y: 90))
        pencil.addLine(to: CGPoint(x: 170, y: 90))
        pencil.move(to: CGPoint(x: 120, y: 150))
        pencil.addLine(to: CGPoint(x: 70, y: 200))
        pencil.move(to: CGPoint(x: 120, y: 150))
        pencil.addLine(to: CGPoint(x: 170, y: 200))
        pencil.stroke()
        
        let circle = UIBezierPath(arcCenter: CGPoint(x: 120, y: 50), radius: 20, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        circle.fill()
    }
    
}
