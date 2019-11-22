

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var stickmanView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(stickmanView.frame.origin.x)
        
        stickmanView.frame.origin.x = 700
    }


}

