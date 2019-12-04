

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stickmenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func goLeft(_ sender: Any) {
        print(stickmenView.frame.origin.x)
       
       stickmenView.frame.origin.x = stickmenView.frame.origin.x - 30
        
    }
}

