import UIKit

class Stickman2View: UIView {

    override func draw(_ rect: CGRect) {
        let pencil = UIBezierPath()
        
        pencil.move(to: CGPoint(x: 38, y: 71))
        pencil.addLine(to: CGPoint(x:77 , y: 121))
        
        pencil.move(to: CGPoint(x: 38, y: 71))
        pencil.addLine(to: CGPoint(x:0 , y: 121))
        
        pencil.move(to: CGPoint(x: 38, y: 38))
        pencil.addLine(to: CGPoint(x:38 , y:123))
        
        pencil.move(to: CGPoint(x: 38, y: 123))
        pencil.addLine(to: CGPoint(x:0 , y:198))
        
        pencil.move(to: CGPoint(x: 38, y: 123))
        pencil.addLine(to: CGPoint(x:77 , y:198))
        
        print(bounds)
        pencil.stroke()
        
        let circle = UIBezierPath(arcCenter: CGPoint(x: 38, y: 38), radius:29, startAngle: 0, endAngle: CGFloat.pi * 2, clockwise: false)
        circle.stroke()
        #colorLiteral(red: 0.3098039329, green: 0.2039215714, blue: 0.03921568766, alpha: 1).setFill()
        circle.fill()
        
        
    }
 }
