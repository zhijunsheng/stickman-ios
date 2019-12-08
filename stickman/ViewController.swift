import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stickmen1View: Stickman1View!
    @IBOutlet weak var stickman2View: Stickman2View!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goLeft(_ sender: Any) {
        print(stickmen1View.frame.origin.x)
        stickmen1View.frame.origin.x = stickmen1View.frame.origin.x - 30
    }
    
    @IBAction func goRight(_ sender: Any) {
        print(stickmen1View.frame.origin.x)
        stickmen1View.frame.origin.x = stickmen1View.frame.origin.x + 60
    }
    
    @IBAction func goUp(_ sender: Any) {
        print(stickmen1View.frame.origin.y)
        stickmen1View.frame.origin.y = stickmen1View.frame.origin.y - 60
    }
    
    @IBAction func goDown(_ sender: Any) {
        print(stickmen1View.frame.origin.y)
        stickmen1View.frame.origin.y = stickmen1View.frame.origin.y + 60
    }
    
}
