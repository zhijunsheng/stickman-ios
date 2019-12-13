//
//  ViewController.swift
//  MovingBlock
//
//  Created by Peter Shi on 2018-04-27.
//  Copyright © 2018 Peter Shi. All rights reserved.
//
//
import UIKit

class ViewController: UIViewController {
    
    let step: CGFloat = 5.0
    var look: Bool = true
    
    @IBOutlet weak var blockView1: StickmanView1!
    
    @IBOutlet weak var blockView2: StickmanView2!
    
    @IBOutlet weak var blockView3: StickmanView3!
    
    @IBOutlet weak var blockView4: StickmanView4!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blockView1.frame.origin.x = 50
        blockView2.frame.origin.x = 50
        blockView1.frame.origin.y = 50
        blockView2.frame.origin.y = 50
        blockView3.isHidden = true
        blockView4.isHidden = true
    }

    @IBAction func leftTapped(_ sender: UIButton) {
        if look {
            blockView1.isHidden = false
            blockView2.isHidden = true
        } else if !look {
            blockView2.isHidden = false
            blockView1.isHidden = true
        }
        blockView1.frame.origin.x -= step
        blockView2.frame.origin.x -= step
        look = !look
    }
    
    @IBAction func upTapped(_ sender: UIButton) {
        if look {
            blockView1.isHidden = false
            blockView2.isHidden = true
        } else if !look {
            blockView2.isHidden = false
            blockView1.isHidden = true
        }
        blockView1.frame.origin.y -= step
        blockView2.frame.origin.y -= step
        look = !look
    }
    
    @IBAction func downTapped(_ sender: UIButton) {
        if look {
            blockView1.isHidden = false
            blockView2.isHidden = true
        } else if !look {
            blockView2.isHidden = false
            blockView1.isHidden = true
        }
        blockView1.frame.origin.y += step
        blockView2.frame.origin.y += step
        look = !look
    }
    
    @IBAction func rightTapped(_ sender: UIButton) {
        if look {
            blockView1.isHidden = false
            blockView2.isHidden = true
        } else if !look {
            blockView2.isHidden = false
            blockView1.isHidden = true
        }
        blockView1.frame.origin.x += step
        blockView2.frame.origin.x += step
        look = !look
    }

    @IBAction func diagonalTapped1(_ sender: UIButton) {
        if look {
            blockView1.isHidden = false
            blockView2.isHidden = true
        } else if !look {
            blockView2.isHidden = false
            blockView1.isHidden = true
        }
        blockView1.frame.origin.x -= step
        blockView1.frame.origin.y -= step
        blockView2.frame.origin.x -= step
        blockView2.frame.origin.y -= step
        look = !look
    }
    
    @IBAction func diagonalTapped2(_ sender: UIButton) {
        if look {
            blockView1.isHidden = false
            blockView2.isHidden = true
        } else if !look {
            blockView2.isHidden = false
            blockView1.isHidden = true
        }
        blockView1.frame.origin.x -= step
        blockView1.frame.origin.y += step
        blockView2.frame.origin.x -= step
        blockView2.frame.origin.y += step
        look = !look
    }
    
    @IBAction func diagonalTapped3(_ sender: UIButton) {
        if look {
            blockView1.isHidden = false
            blockView2.isHidden = true
        } else if !look {
            blockView2.isHidden = false
            blockView1.isHidden = true
        }
        blockView1.frame.origin.x += step
        blockView1.frame.origin.y += step
        blockView2.frame.origin.x += step
        blockView2.frame.origin.y += step
        look = !look
    }
    
    @IBAction func diagonalTapped4(_ sender: UIButton) {
        if look {
            blockView1.isHidden = false
            blockView2.isHidden = true
        } else if !look {
            blockView2.isHidden = false
            blockView1.isHidden = true
        }
        blockView1.frame.origin.x += step
        blockView1.frame.origin.y -= step
        blockView2.frame.origin.x += step
        blockView2.frame.origin.y -= step
        look = !look
    }
}
