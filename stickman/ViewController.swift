

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stickmanView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    // <- left
    // -> right
    // ^ up
    // v down
    
    @IBAction func left(_ sender: Any) {
        print(stickmanView.frame.origin.x)
        stickmanView.frame.origin.x = stickmanView.frame.origin.x - 30
    }
    
    @IBAction func right(_ sender: Any) {
        print(stickmanView.frame.origin.x)
        stickmanView.frame.origin.x = stickmanView.frame.origin.x + 30
    }
    
    
    @IBAction func up(_ sender: Any) {
        print(stickmanView.frame.origin.y)
        stickmanView.frame.origin.y = stickmanView.frame.origin.y - 30
    }
    
    
    @IBAction func down(_ sender: Any) {
        print(stickmanView.frame.origin.y)
        stickmanView.frame.origin.y = stickmanView.frame.origin.y + 30
    }
    
}

