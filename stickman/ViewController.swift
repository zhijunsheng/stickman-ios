import UIKit
import AVFoundation

class ViewController: UIViewController {
    var soundPlayer : AVAudioPlayer!
    
    @IBOutlet weak var stickmanView: StickmanView!
    @IBOutlet weak var stickmanSecondView: StickmanSecondView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let soundPath = Bundle.main.path(forResource: "pick_release", ofType: "wav")
        let soundURL = URL(fileURLWithPath: soundPath!)
        soundPlayer = try? AVAudioPlayer(contentsOf: soundURL)
        
        stickmanView.isHidden = false
        stickmanSecondView.isHidden = true
    }

    @IBAction func goLeft(_ sender: UIButton) {
        soundPlayer.play()
        if stickmanView.frame.origin.x >= 30 {
            stickmanView.frame.origin.x = stickmanView.frame.origin.x - 30
            stickmanSecondView.frame.origin.x = stickmanSecondView.frame.origin.x - 30
            
        }
        
        animate()
    }
    
    @IBAction func goUp(_ sender: UIButton) {
        soundPlayer.play()
        if stickmanView.frame.origin.y >= 30 {
            stickmanView.frame.origin.y = stickmanView.frame.origin.y - 30
            stickmanSecondView.frame.origin.y = stickmanSecondView.frame.origin.y - 30
          
        }
        
        animate()
    }
    
    @IBAction func goDown(_ sender: UIButton) {
        soundPlayer.play()
        if stickmanView.frame.origin.y <= 550 {
            stickmanView.frame.origin.y = stickmanView.frame.origin.y + 30
            stickmanSecondView.frame.origin.y = stickmanSecondView.frame.origin.y + 30
            
        }
    
        animate()
    }
    
    @IBAction func goRight(_ sender: UIButton) {
        soundPlayer.play()
        if stickmanView.frame.origin.x <= 500 {
            stickmanView.frame.origin.x = stickmanView.frame.origin.x + 30
            stickmanSecondView.frame.origin.x = stickmanSecondView.frame.origin.x + 30
        }
        
        animate()
    }
    
    @IBAction func goUpperRight(_ sender: UIButton) {
        soundPlayer.play()
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
