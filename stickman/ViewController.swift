import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stickmenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goLeft(_ sender: Any) {
        print(stickmenView.frame.origin.x)
        stickmenView.frame.origin.x = stickmenView.frame.origin.x - 30
    }
    
    @IBAction func goRight(_ sender: Any) {
        print(stickmenView.frame.origin.x)
        stickmenView.frame.origin.x = stickmenView.frame.origin.x + 60
    }
    
    @IBAction func goUp(_ sender: Any) {
        print(stickmenView.frame.origin.y)
        stickmenView.frame.origin.y = stickmenView.frame.origin.y - 60
    }
    
    @IBAction func goDown(_ sender: Any) {
        print(stickmenView.frame.origin.y)
        stickmenView.frame.origin.y = stickmenView.frame.origin.y + 60
    }
}
