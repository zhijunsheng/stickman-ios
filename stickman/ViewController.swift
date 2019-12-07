

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stickmanView: Stickman1View!
    
    @IBOutlet weak var stickman2View: Stickman2View!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // if x is greater than 3 we print "hello"; otherwise we print "good morning".
        let x = 1
        if x > 3 {
            print("hello")
            print("hell2o")
            print("hello3")
        } else {
            print("good morning")
        }
        
        

    }

    @IBAction func goRight(_ sender: Any) {
        // stickmanView.frame.origin.x 200
        // stickmanView.frame.origin.x 250
        // stickmanView.frame.origin.x 300
        // stickmanView.frame.origin.x 350
        stickmanView.frame.origin.x = stickmanView.frame.origin.x + 50
        stickman2View.frame.origin.x = stickman2View.frame.origin.x + 50
        
        if stickmanView.isHidden {
            stickmanView.isHidden = false
        } else {
            stickmanView.isHidden = true
        }
    }
    @IBAction func goUp(_ sender: Any) {
//        if stickmanView.frame.origin.y <
        
        stickmanView.frame.origin.y = stickmanView.frame.origin.y - 50
        stickman2View.frame.origin.y = stickman2View.frame.origin.y - 50
    }
   
    @IBAction func goLeft(_ sender: Any) {
        if stickmanView.frame.origin.x < 0.0 {
            return
        }
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
        
        stickman2View.frame.origin.y = stickman2View.frame.origin.y + 50
        
    }
    
    
}



