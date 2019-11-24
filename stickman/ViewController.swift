

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stickmanView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func goLeft(_ sender: UIButton) {
        // let's say our step length is 50
        
        stickmanView.frame.origin.x = stickmanView.frame.origin.x - 50

    }
}

