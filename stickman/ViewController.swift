

import UIKit

class ViewController: UIViewController {

    var step = 0
    
    
    @IBOutlet var canvasView: CanvasView!
    
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bj = UIBezierPath(arcCenter: CGPoint(x: 365, y: 500), radius: 350, startAngle: 0 * CGFloat.pi, endAngle: 2 * CGFloat.pi, clockwise: true)
        bj.lineWidth = 0.5
        bj.stroke()
        
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { [self] _ in
            if self.canvasView.show1 == true {
                self.canvasView.show1 = false
            } else {
                canvasView.show1 = true
            }
            canvasView.setNeedsDisplay()
        }
    }

    @IBAction func pressButton(_ sender: Any) {
        if canvasView.show1 == true {
            canvasView.show1 = false
        } else {
            canvasView.show1 = true
        }
        canvasView.setNeedsDisplay()
    }
    
    @IBAction func pressText(_ sender: Any) {
        if step == 0 {
            label1.isHidden = false
            label2.isHidden = true
            label3.isHidden = true
            label4.isHidden = true
            label5.isHidden = true
        }
        
        if step == 7 {
            label1.isHidden = false
            label2.isHidden = false
            label3.isHidden = true
            label4.isHidden = true
            label5.isHidden = true
        }
        
        if step == 14 {
            label1.isHidden = false
            label2.isHidden = false
            label3.isHidden = false
            label4.isHidden = true
            label5.isHidden = true
        }
        
        if step == 21 {
            label1.isHidden = false
            label2.isHidden = false
            label3.isHidden = false
            label4.isHidden = false
            label5.isHidden = true
        }
        
        if step == 28 {
            label1.isHidden = false
            label2.isHidden = false
            label3.isHidden = false
            label4.isHidden = false
            label5.isHidden = false
        }
        step = step + 7
    }

}

