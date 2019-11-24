

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var stickmanView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(stickmanView.frame.origin.x)

        
        
    }


    @IBAction func goRight(_ sender: Any) {
        stickmanView.frame.origin.x = 10
        stickmanView.frame.origin.y = 700
    
    }
}

