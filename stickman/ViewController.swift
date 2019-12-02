

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stickmanView: StickmanView!
    
    @IBOutlet weak var stickman2View: Stickman2View!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(stickmanView.frame.origin.x)

    }

    @IBAction func goRight(_ sender: Any) {
        stickmanView.frame.origin.x = stickmanView.frame.origin.x + 50
        stickman2View.frame.origin.x = stickman2View.frame.origin.x + 50
        
        if stickmanView.isHidden {
            stickmanView.isHidden = false
        } else {
            stickmanView.isHidden = true
        }
    }
    
    @IBAction func goUp(_ sender: Any) {
        stickmanView.frame.origin.y = stickmanView.frame.origin.y - 50
    }
   
    @IBAction func goLeft(_ sender: Any) {
        stickmanView.frame.origin.x = stickmanView.frame.origin.x - 50
         stickman2View.frame.origin.x = stickman2View.frame.origin.x - 50
        
        if stickmanView.isHidden {
            stickmanView.isHidden = false
        } else {
            stickmanView.isHidden = true
        }
    }
    
    @IBAction func goDown(_ sender: Any) {
        stickmanView.frame.origin.y = stickmanView.frame.origin.y
        + 50
        
    }
    
    
}
