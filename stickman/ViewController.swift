

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stickmanView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(stickmanView.frame.origin.x)

    }

    @IBAction func goRight(_ sender: Any) {
        stickmanView.frame.origin.x = stickmanView.frame.origin.x + 50
    }
    
    @IBAction func goUp(_ sender: Any) {
        stickmanView.frame.origin.y = stickmanView.frame.origin.y - 50
    }
   
    @IBAction func goLeft(_ sender: Any) {
        stickmanView.frame.origin.x = stickmanView.frame.origin.x - 50
    }
    
    @IBAction func goDown(_ sender: Any) {
        stickmanView.frame.origin.y = stickmanView.frame.origin.y
        + 50
        
    }
}
