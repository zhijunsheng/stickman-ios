import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stickmanView: StickmanView!
    @IBOutlet weak var stickmanSecondView: StickmanSecondView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stickmanView.isHidden = false
        stickmanSecondView.isHidden = true
    }

    @IBAction func goLeft(_ sender: UIButton) {
        
        if stickmanView.frame.origin.x >= 30 {
           stickmanView.frame.origin.x = stickmanView.frame.origin.x - 30
            stickmanSecondView.frame.origin.x = stickmanSecondView.frame.origin.x - 30
        }
        
        if stickmanView.isHidden {
            stickmanView.isHidden = false
            stickmanSecondView.isHidden = true
        } else {
            stickmanView.isHidden = true
            stickmanSecondView.isHidden = false
        }
    }
    
    @IBAction func goUp(_ sender: UIButton) {
        if stickmanView.frame.origin.y >= 30 {
            stickmanView.frame.origin.y = stickmanView.frame.origin.y - 30
            stickmanSecondView.frame.origin.y = stickmanSecondView.frame.origin.y - 30
        }
        
        if stickmanView.isHidden {
            stickmanView.isHidden = false
            stickmanSecondView.isHidden = true
        } else {
            stickmanView.isHidden = true
            stickmanSecondView.isHidden = false
        }
    }
    
    @IBAction func goDown(_ sender: UIButton) {
        if stickmanView.frame.origin.y <= 550 {
            stickmanView.frame.origin.y = stickmanView.frame.origin.y + 30
            stickmanSecondView.frame.origin.y = stickmanSecondView.frame.origin.y + 30
        }
    
        if stickmanView.isHidden {
            stickmanView.isHidden = false
            stickmanSecondView.isHidden = true
        } else {
            stickmanView.isHidden = true
            stickmanSecondView.isHidden = false
        }
    }
    
    @IBAction func goRight(_ sender: UIButton) {
        if stickmanView.frame.origin.x <= 500 {
        stickmanView.frame.origin.x = stickmanView.frame.origin.x + 30
        stickmanSecondView.frame.origin.x = stickmanSecondView.frame.origin.x + 30
        }
        
        if stickmanView.isHidden {
            stickmanView.isHidden = false
            stickmanSecondView.isHidden = true
        } else {
            stickmanView.isHidden = true
            stickmanSecondView.isHidden = false
        }
    }
    
    @IBAction func goUpperRight(_ sender: UIButton) {
        if stickmanView.frame.origin.x <= 500 {
        if stickmanView.frame.origin.y >= 30 {
        stickmanView.frame.origin.x = stickmanView.frame.origin.x + 30
        stickmanView.frame.origin.y = stickmanView.frame.origin.y - 30
        stickmanSecondView.frame.origin.x = stickmanSecondView.frame.origin.x + 30
        stickmanSecondView.frame.origin.y = stickmanSecondView.frame.origin.y - 30
            }}
        if stickmanView.isHidden {
            stickmanView.isHidden = false
            stickmanSecondView.isHidden = true
        } else {
            stickmanView.isHidden = true
            stickmanSecondView.isHidden = false
        }
    }
}
