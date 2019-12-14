import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stickman1View: Stickman1View!
    @IBOutlet weak var stickman2View: Stickman2View!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stickman1View.frame.origin.x = stickman2View.frame.origin.x
    }
    
    @IBAction func goLeft(_ sender: Any) {
        stickman1View.frame.origin.x = stickman1View.frame.origin.x - 30
        stickman2View.frame.origin.x = stickman2View.frame.origin.x - 30
        animate()
    }
    
    @IBAction func goRight(_ sender: Any) {
        stickman1View.frame.origin.x = stickman1View.frame.origin.x + 30
        stickman2View.frame.origin.x = stickman2View.frame.origin.x + 30
        animate()
    }
    
    @IBAction func goUp(_ sender: Any) {
        stickman1View.frame.origin.y = stickman1View.frame.origin.y - 60
        stickman2View.frame.origin.y = stickman2View.frame.origin.y - 60
        animate()
    }
    
    @IBAction func goDown(_ sender: Any) {
        stickman1View.frame.origin.y = stickman1View.frame.origin.y + 60
        stickman2View.frame.origin.y = stickman2View.frame.origin.y + 60
        animate()
    }
    
    func animate() {
        if stickman2View.isHidden {
            stickman2View.isHidden = false
        } else {
            stickman2View.isHidden = true
        }
    }    
}
