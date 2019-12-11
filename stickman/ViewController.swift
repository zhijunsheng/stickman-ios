

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var stickmanView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goLeft(_ sender: Any) {
        if stickmanView.frame.origin.x < 0 {
            return
        }
        stickmanView.frame.origin.x -= 30
    }
    
    @IBAction func goUp(_ sender: Any) {
        stickmanView.frame.origin.y -= 30
    }
    
    @IBAction func goRight(_ sender: Any) {
        stickmanView.frame.origin.x += 30
        
    }
    
    @IBAction func goDown(_ sender: Any) {
        stickmanView.frame.origin.y += 30
    }
    
    
}

