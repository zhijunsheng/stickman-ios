

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stickman1View: Stickman1View!
    @IBOutlet weak var stickman2View: Stickman2View!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stickman1View.frame.origin.x = stickman2View.frame.origin.x
    }

    
    // <- left
    // -> right
    // ^ up
    // v down
    
    @IBAction func left(_ sender: Any) {
        stickman1View.frame.origin.x = stickman1View.frame.origin.x - 30
        stickman2View.frame.origin.x = stickman2View.frame.origin.x - 30
        if stickman1View.isHidden {
            stickman1View.isHidden = false
            stickman2View.isHidden = true
        } else {
            stickman1View.isHidden = true
            stickman2View.isHidden = false
        }
    }
    
    @IBAction func right(_ sender: Any) {
        stickman1View.frame.origin.x = stickman1View.frame.origin.x + 30
        stickman2View.frame.origin.x = stickman2View.frame.origin.x + 30
        stickman1View.isHidden = false
        stickman2View.isHidden = false
    }
    
    @IBAction func up(_ sender: Any) {
        stickman1View.frame.origin.y = stickman1View.frame.origin.y - 30
        stickman2View.frame.origin.y = stickman2View.frame.origin.y - 30
        stickman1View.isHidden = true
    }
    
    @IBAction func down(_ sender: Any) {
        stickman1View.frame.origin.y = stickman1View.frame.origin.y + 30
        stickman2View.frame.origin.y = stickman2View.frame.origin.y + 30
        stickman1View.isHidden = true

    }
}

