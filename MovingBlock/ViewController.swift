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
    
    let Step : CGFloat = 5.0
    
    @IBOutlet weak var stickManImageView: UIImageView!
    @IBOutlet weak var blockView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func leftTapped(_ sender: UIButton) {
        
        /*
        93.0
        401.0
        70.0
        37.0
        */
        print(blockView.frame)
        print(blockView.frame.origin)
        print(blockView.frame.origin.x)
        print(blockView.frame.origin.y)
        print(blockView.frame.width)
        print(blockView.frame.height)
        //stik man
        print(stickManImageView.frame)
        
        // X
        let stickManX = stickManImageView.frame.origin.x
        let blockViewX = blockView.frame.origin.x
        let blockViewWidth = blockView.frame.width
        let stickManWidth = stickManImageView.frame.width
        
        // Y
        let stickManY = stickManImageView.frame.origin.y
        let stickManHeight = stickManImageView.frame.height
        let blockViewY = blockView.frame.origin.y
        let blockViewHeight = blockView.frame.height
        
        
        if stickManY + stickManHeight < blockViewY || blockViewHeight + blockViewY < stickManY {
            stickManImageView.frame.origin.x -= Step
        } else {
            if stickManX > blockViewX + blockViewWidth || stickManWidth + stickManX < blockViewX {
                stickManImageView.frame.origin.x -= Step
        }
    }
}
    
    @IBAction func upTapped(_ sender: UIButton) {
    
        // X
        let stickManX = stickManImageView.frame.origin.x
        let blockViewX = blockView.frame.origin.x
        let blockViewWidth = blockView.frame.width
        let stickManWidth = stickManImageView.frame.width
        
        // Y
        let stickManY = stickManImageView.frame.origin.y
        let blockViewY = blockView.frame.origin.y
        let blockViewHeight = blockView.frame.height
        let stickManHeight = stickManImageView.frame.height
        
        if stickManX > blockViewWidth + blockViewX || stickManWidth + stickManX < blockViewX {
            stickManImageView.frame.origin.y -= Step
        } else {
            if stickManY > blockViewHeight + blockViewY || stickManHeight + stickManY < blockViewY {
                stickManImageView.frame.origin.y -= Step
            }
        }
    }
    
    @IBAction func downTapped(_ sender: UIButton) {
        
        // X
        let stickManX = stickManImageView.frame.origin.x
        let blockViewX = blockView.frame.origin.x
        let blockViewWidth = blockView.frame.width
        let stickManWidth = stickManImageView.frame.width
        
        // Y
        let stickManY = stickManImageView.frame.origin.y
        let blockViewY = blockView.frame.origin.y
        let blockViewHeight = blockView.frame.height
        let stickManHeight = stickManImageView.frame.height
        
        if stickManX > blockViewX + blockViewWidth || stickManWidth + stickManX < blockViewX {
            stickManImageView.frame.origin.y += Step
        } else {
            if stickManY > blockViewHeight + blockViewY || stickManHeight + stickManY < blockViewY {
                stickManImageView.frame.origin.y += Step
            }
        }
    }
    
    @IBAction func rightTapped(_ sender: UIButton) {
        // X
        let stickManX = stickManImageView.frame.origin.x
        let blockViewX = blockView.frame.origin.x
        let blockViewWidth = blockView.frame.width
        let stickManWidth = stickManImageView.frame.width
        
        // Y
        let stickManY = stickManImageView.frame.origin.y
        //let stickManHeight = stickManImageView.frame.height
        let blockViewY = blockView.frame.origin.y
        let blockViewHeight = blockView.frame.height
        
        if stickManY < blockViewY || stickManY > blockViewHeight + blockViewY {
            stickManImageView.frame.origin.x += Step
        } else {
            if stickManX > blockViewWidth + blockViewX || stickManX + stickManWidth < blockViewX {
                stickManImageView.frame.origin.x += Step
            }
        }
    }

    @IBAction func diagonalTapped1(_ sender: UIButton) {
        
        // X
        let stickManX = stickManImageView.frame.origin.x
        let blockViewX = blockView.frame.origin.x
        let blockViewWidth = blockView.frame.width
        let stickManWidth = stickManImageView.frame.width
        
        // Y
        let stickManY = stickManImageView.frame.origin.y
        let stickManHeight = stickManImageView.frame.height
        let blockViewY = blockView.frame.origin.y
        let blockViewHeight = blockView.frame.height
        
        
        if stickManY + stickManHeight < blockViewY || blockViewHeight + blockViewY < stickManY {
            stickManImageView.frame.origin.y -= Step
            stickManImageView.frame.origin.x -= Step
        } else {
            if stickManX > blockViewX + blockViewWidth || stickManWidth + stickManX < blockViewX {
                stickManImageView.frame.origin.y -= Step
                stickManImageView.frame.origin.x -= Step
            }
        }
        if stickManX > blockViewWidth + blockViewX || stickManWidth + stickManX < blockViewX {
            stickManImageView.frame.origin.y -= Step
            stickManImageView.frame.origin.x -= Step
        } else {
            if stickManY > blockViewHeight + blockViewY || stickManHeight + stickManY < blockViewY {
                stickManImageView.frame.origin.y -= Step
                stickManImageView.frame.origin.x -= Step
            }
        }
    }
    
    
    @IBAction func diagonalTapped2(_ sender: UIButton) {
        
        // X
        let stickManX = stickManImageView.frame.origin.x
        let blockViewX = blockView.frame.origin.x
        let blockViewWidth = blockView.frame.width
        let stickManWidth = stickManImageView.frame.width
        
        // Y
        let stickManY = stickManImageView.frame.origin.y
        let stickManHeight = stickManImageView.frame.height
        let blockViewY = blockView.frame.origin.y
        let blockViewHeight = blockView.frame.height
        
        
        if stickManY + stickManHeight < blockViewY || blockViewHeight + blockViewY < stickManY {
            stickManImageView.frame.origin.x -= Step
            stickManImageView.frame.origin.y += Step
        } else {
            if stickManX > blockViewX + blockViewWidth || stickManWidth + stickManX < blockViewX {
                stickManImageView.frame.origin.x -= Step
                stickManImageView.frame.origin.y += Step
            }
        }
        if stickManX > blockViewX + blockViewWidth || stickManWidth + stickManX < blockViewX {
            
            stickManImageView.frame.origin.x -= Step
            stickManImageView.frame.origin.y += Step
        } else {
            if stickManY > blockViewHeight + blockViewY || stickManHeight + stickManY < blockViewY {
                stickManImageView.frame.origin.x -= Step
                stickManImageView.frame.origin.y += Step
            }
        }
    }
    
    
    @IBAction func diagonalTapped3(_ sender: UIButton) {
        
        // X
        let stickManX = stickManImageView.frame.origin.x
        let blockViewX = blockView.frame.origin.x
        let blockViewWidth = blockView.frame.width
        let stickManWidth = stickManImageView.frame.width
        
        // Y
        let stickManY = stickManImageView.frame.origin.y
        let blockViewY = blockView.frame.origin.y
        let blockViewHeight = blockView.frame.height
        let stickManHeight = stickManImageView.frame.height
        
        if stickManX > blockViewX + blockViewWidth || stickManWidth + stickManX < blockViewX {
            stickManImageView.frame.origin.y += Step
            stickManImageView.frame.origin.x += Step
        } else {
            if stickManY > blockViewHeight + blockViewY || stickManHeight + stickManY < blockViewY {
                stickManImageView.frame.origin.y += Step
                stickManImageView.frame.origin.x += Step
            }
        }
        if stickManY + stickManHeight < blockViewY || stickManY > blockViewHeight + blockViewY {
            stickManImageView.frame.origin.y += Step
            stickManImageView.frame.origin.x += Step
        } else {
            if stickManX > blockViewWidth + blockViewX || stickManX + stickManWidth < blockViewX {
                
                stickManImageView.frame.origin.y += Step
                stickManImageView.frame.origin.x += Step
            }
        }
    }
    @IBAction func diagonalTapped4(_ sender: UIButton) {
        
        // X
        let stickManX = stickManImageView.frame.origin.x
        let blockViewX = blockView.frame.origin.x
        let blockViewWidth = blockView.frame.width
        let stickManWidth = stickManImageView.frame.width
        
        // Y
        let stickManY = stickManImageView.frame.origin.y
        let blockViewY = blockView.frame.origin.y
        let blockViewHeight = blockView.frame.height
        let stickManHeight = stickManImageView.frame.height
        
        if stickManX > blockViewWidth + blockViewX || stickManWidth + stickManX < blockViewX {
            stickManImageView.frame.origin.y -= Step
            stickManImageView.frame.origin.x += Step
        } else {
            if stickManY > blockViewHeight + blockViewY || stickManHeight + stickManY < blockViewY {
                stickManImageView.frame.origin.y -= Step
                stickManImageView.frame.origin.x += Step
            }
        }
        if stickManY < blockViewY || stickManY > blockViewHeight + blockViewY {
            stickManImageView.frame.origin.y -= Step
            stickManImageView.frame.origin.x += Step
        } else {
            if stickManX > blockViewWidth + blockViewX || stickManX + stickManWidth < blockViewX {
                
                stickManImageView.frame.origin.y -= Step
                stickManImageView.frame.origin.x += Step
            }
        }
    }
}
