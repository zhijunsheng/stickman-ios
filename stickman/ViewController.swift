

import UIKit

class ViewController: UIViewController {

    @IBOutlet var canvasView: CanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let bj = UIBezierPath(arcCenter: CGPoint(x: 365, y: 500), radius: 350, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        bj.lineWidth = 0.5
        bj.stroke()
        
    }


    @IBAction func pressButton(_ sender: Any) {
        if canvasView.show1 == true {
            canvasView.show1 = false
        } else {
            canvasView.show1 = true
        }
        canvasView.setNeedsDisplay()
    }
}

