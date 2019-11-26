import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stickmanView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func goLeft(_ sender: UIButton) {
        stickmanView.frame.origin.x = stickmanView.frame.origin.x - 50
    }
    
    @IBAction func goUp(_ sender: UIButton) {
        stickmanView.frame.origin.y = stickmanView.frame.origin.y - 50
    }
    
    @IBAction func goDown(_ sender: UIButton) {
        stickmanView.frame.origin.y = stickmanView.frame.origin.y + 50
    }
    
    @IBAction func goRight(_ sender: UIButton) {
        stickmanView.frame.origin.x = stickmanView.frame.origin.x + 50
    }
    
    @IBAction func goUpperRight(_ sender: UIButton) {
        stickmanView.frame.origin.x = stickmanView.frame.origin.x + 50
        stickmanView.frame.origin.y = stickmanView.frame.origin.y - 50
    }
}
