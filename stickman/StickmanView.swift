import UIKit

class StickmanView: UIView {

    override func draw(_ rect: CGRect) {
        
        let head = UIBezierPath(arcCenter: CGPoint(x: 90, y: 60), radius: 30, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        head.stroke()
        
        let pen = UIBezierPath()
        pen.move(to: CGPoint(x: 90, y: 90))
        pen.addLine(to: CGPoint(x: 90, y: 90 + 120))
        
        pen.move(to: CGPoint(x: 90, y: 90 + 30))
        pen.addLine(to: CGPoint(x: 90 - 55, y: 90 + 110))
        
        pen.move(to: CGPoint(x: 90, y: 90 + 30))
        pen.addLine(to: CGPoint(x: 90 + 55, y: 90 + 110))
        
        pen.move(to: CGPoint(x: 90, y: 90 + 120))
        pen.addLine(to: CGPoint(x: 90 - 70, y: 90 + 210))

        pen.move(to: CGPoint(x: 90, y: 90 + 120))
        pen.addLine(to: CGPoint(x: 90 + 70, y: 90 + 210))
        
        pen.stroke()
    }

}
