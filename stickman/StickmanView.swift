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
        pencil.move(to: CGPoint(x: 100, y: 200))
        pencil.addLine(to: CGPoint(x: 300, y: 200))
        pencil.stroke()
    }
    

}
