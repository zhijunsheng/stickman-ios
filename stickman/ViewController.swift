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
        
        animate()
    }
    
    @IBAction func goUp(_ sender: UIButton) {
        if stickmanView.frame.origin.y >= 30 {
            stickmanView.frame.origin.y = stickmanView.frame.origin.y - 30
            stickmanSecondView.frame.origin.y = stickmanSecondView.frame.origin.y - 30
        }
        
        animate()
    }
    
    @IBAction func goDown(_ sender: UIButton) {
        if stickmanView.frame.origin.y <= 550 {
            stickmanView.frame.origin.y = stickmanView.frame.origin.y + 30
            stickmanSecondView.frame.origin.y = stickmanSecondView.frame.origin.y + 30
        }
    
        animate()
    }
    
    @IBAction func goRight(_ sender: UIButton) {
        if stickmanView.frame.origin.x <= 500 {
            stickmanView.frame.origin.x = stickmanView.frame.origin.x + 30
            stickmanSecondView.frame.origin.x = stickmanSecondView.frame.origin.x + 30
        }
        
        animate()
    }
    
    @IBAction func goUpperRight(_ sender: UIButton) {
        if stickmanView.frame.origin.x <= 500 {
            if stickmanView.frame.origin.y >= 30 {
                stickmanView.frame.origin.x = stickmanView.frame.origin.x + 30
                stickmanView.frame.origin.y = stickmanView.frame.origin.y - 30
                stickmanSecondView.frame.origin.x = stickmanSecondView.frame.origin.x + 30
                stickmanSecondView.frame.origin.y = stickmanSecondView.frame.origin.y - 30
            }
        }
        
        animate()
    }
    
    func animate()  {
        if stickmanView.isHidden {
            stickmanView.isHidden = false
            stickmanSecondView.isHidden = true
        } else {
            stickmanView.isHidden = true
            stickmanSecondView.isHidden = false
        }
    }
    
    @IBAction func startTimer(_ sender: UIButton) {
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { (timer) in
            print("hello")
            self.stickmanView.frame.origin.x = self.stickmanView.frame.origin.x - 30
            self.stickmanSecondView.frame.origin.x = self.stickmanSecondView.frame.origin.x - 30
            self.animate()
        }
    }
    
}
