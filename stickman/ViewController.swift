import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stickman1View: Stickman1View!
    @IBOutlet weak var stickman2View: Stickman2View!
    @IBOutlet weak var stickman3View: Stickman3View!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func goRight(_ sender: Any) {
        stickman1View.frame.origin.x = stickman1View.frame.origin.x + 50
        stickman2View.frame.origin.x = stickman2View.frame.origin.x + 50
        stickman3View.frame.origin.x = stickman3View.frame.origin.x + 50
 
        if stickman1View.isHidden {
            stickman1View.isHidden = false
        } else {
            stickman1View.isHidden = true
        }
    }
    
    @IBAction func goUp(_ sender: Any) {
        stickman1View.frame.origin.y = stickman1View.frame.origin.y - 50
        stickman2View.frame.origin.y = stickman2View.frame.origin.y - 50
        stickman3View.frame.origin.y = stickman3View.frame.origin.y - 50
        
        if stickman1View.isHidden {
            stickman1View.isHidden = false
        } else {
            stickman1View.isHidden = true
        }
    }
   
    @IBAction func goLeft(_ sender: Any) {
        if stickman1View.frame.origin.x < 0.0 {
            return
        }
        stickman1View.frame.origin.x = stickman1View.frame.origin.x - 50
        stickman2View.frame.origin.x = stickman2View.frame.origin.x - 50
        stickman3View.frame.origin.x = stickman3View.frame.origin.x - 50
        
        if stickman1View.isHidden {
            stickman1View.isHidden = false
        } else {
            stickman1View.isHidden = true
        }
    }
    
    @IBAction func goDown(_ sender: Any) {
        stickman1View.frame.origin.y = stickman1View.frame.origin.y + 50
        stickman2View.frame.origin.y = stickman2View.frame.origin.y + 50
        stickman3View.frame.origin.y = stickman3View.frame.origin.y + 50
        
        if stickman1View.isHidden {
            stickman1View.isHidden = false
        } else {
            stickman1View.isHidden = true
        }
    }
}
