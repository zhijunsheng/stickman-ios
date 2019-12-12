import UIKit

class Stickman2View: UIView {

    override func draw(_ rect: CGRect) {
        let head = UIBezierPath(arcCenter: CGPoint(x: 90, y: 60), radius: 30, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        head.stroke()
        
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 90, y: 90))
        pen.addLine(to: CGPoint(x: 90, y: 90 + 120))
        
        pen.move(to: CGPoint(x: 90, y: 90 + 30))
        pen.addLine(to: CGPoint(x: 90 - 33, y: 90 + 40))
        
        pen.move(to: CGPoint(x: 90 - 33, y: 90 + 40))
        pen.addLine(to: CGPoint(x: 90 - 53, y: 90))

        pen.move(to: CGPoint(x: 90, y: 90 + 30))
        pen.addLine(to: CGPoint(x: 90 + 33, y: 90 + 50))
        
        pen.move(to: CGPoint(x: 90 + 33, y: 90 + 50))
        pen.addLine(to: CGPoint(x: 90 + 44, y: 90 + 90))

        pen.move(to: CGPoint(x: 90, y: 90 + 120))
        pen.addLine(to: CGPoint(x: 90 - 30, y: 90 + 150))
        
        pen.move(to: CGPoint(x: 90 - 30, y: 90 + 150))
        pen.addLine(to: CGPoint(x: 90 - 40, y: 90 + 210))
        
        pen.move(to: CGPoint(x: 90 - 40, y: 90 + 210))
        pen.addLine(to: CGPoint(x: 90 - 50, y: 90 + 210))

        pen.move(to: CGPoint(x: 90, y: 90 + 120))
        pen.addLine(to: CGPoint(x: 90 + 29, y: 90 + 210))
        
        pen.move(to: CGPoint(x: 90 + 29, y: 90 + 210))
        pen.addLine(to: CGPoint(x: 90 + 9, y: 90 + 210))
        
        pen.stroke()
    }
    

}
