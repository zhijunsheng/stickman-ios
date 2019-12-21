import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stickman1View: Stickman1View!
    @IBOutlet weak var stickman2View: Stickman2View!
    
    let step: CGFloat =  50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stickman1View.frame.origin.x = stickman2View.frame.origin.x
        
    }
    
    @IBAction func goLeft(_ sender: Any) {
      
      
        if stickman1View.frame.origin.x > 12 {
            stickman1View.frame.origin.x -= step
            stickman2View.frame.origin.x -= step
            animate()
        }
    }
    
    @IBAction func goRight(_ sender: Any) {
        if stickman1View.frame.origin.x < 700 {
            stickman1View.frame.origin.x += step
            stickman2View.frame.origin.x += step
            animate()
        }
        
    }
    
    @IBAction func goUp(_ sender: Any) {
        if stickman1View.frame.origin.y > 12 {
        stickman1View.frame.origin.y -= step
        stickman2View.frame.origin.y -= step
        animate()
        }
    }
    
    @IBAction func goDown(_ sender: Any) {
        if stickman1View.frame.origin.y < 700 {
        stickman1View.frame.origin.y += step
        stickman2View.frame.origin.y += step
        animate()
        }
        
    }
    
    func animate() {
        if stickman2View.isHidden {
            stickman2View.isHidden = false
        } else {
            stickman2View.isHidden = true
        }
    }
}



