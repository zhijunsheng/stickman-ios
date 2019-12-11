//
//  StickmanView.swift
//  stickman
//
//  Created by Elaine on 2019-12-08.
//  Copyright © 2019 Andy Yan. All rights reserved.
//

import UIKit

class StickmanView: UIView {
    
    override func draw(_ rect: CGRect) {
         let pencil = UIBezierPath()
        pencil.move(to: CGPoint(x: 100, y: 50))
        pencil.addLine(to: CGPoint(x: 100, y: 150))
        pencil.move(to: CGPoint(x: 150, y: 100))
        pencil.addLine(to: CGPoint(x: 50, y: 100))
        pencil.move(to: CGPoint(x: 150, y: 170))
        pencil.addLine(to: CGPoint(x: 100, y: 150))
        pencil.move(to: CGPoint(x: 50, y: 170))
        pencil.addLine(to: CGPoint(x: 100, y: 150))
        pencil.stroke()
        let circle = UIBezierPath(arcCenter: CGPoint(x: 100, y: 50), radius: 21, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        #colorLiteral(red: 0, green: 0.1778146404, blue: 0.2573576627, alpha: 1).setFill()
        circle.fill()
        circle.stroke()
        
    }
}
