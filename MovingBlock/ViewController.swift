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
    
    
    let step : CGFloat = 5.0
    
    @IBOutlet weak var stickManImageView: UIImageView!
    @IBOutlet weak var blockView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func leftTapped(_ sender: UIButton) {
        blockView.frame.origin.x -= step
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
            stickManImageView.frame.origin.y -= step
        } else {
            if stickManY > blockViewHeight + blockViewY || stickManHeight + stickManY < blockViewY {
                stickManImageView.frame.origin.y -= step
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
            stickManImageView.frame.origin.y += step
        } else {
            if stickManY > blockViewHeight + blockViewY || stickManHeight + stickManY < blockViewY {
                stickManImageView.frame.origin.y += step
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
            stickManImageView.frame.origin.x += step
        } else {
            if stickManX > blockViewWidth + blockViewX || stickManX + stickManWidth < blockViewX {
                stickManImageView.frame.origin.x += step
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
            stickManImageView.frame.origin.y -= step
            stickManImageView.frame.origin.x -= step
        } else {
            if stickManX > blockViewX + blockViewWidth || stickManWidth + stickManX < blockViewX {
                stickManImageView.frame.origin.y -= step
                stickManImageView.frame.origin.x -= step
            }
        }
        if stickManX > blockViewWidth + blockViewX || stickManWidth + stickManX < blockViewX {
            stickManImageView.frame.origin.y -= step
            stickManImageView.frame.origin.x -= step
        } else {
            if stickManY > blockViewHeight + blockViewY || stickManHeight + stickManY < blockViewY {
                stickManImageView.frame.origin.y -= step
                stickManImageView.frame.origin.x -= step
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
            stickManImageView.frame.origin.x -= step
            stickManImageView.frame.origin.y += step
        } else {
            if stickManX > blockViewX + blockViewWidth || stickManWidth + stickManX < blockViewX {
                stickManImageView.frame.origin.x -= step
                stickManImageView.frame.origin.y += step
            }
        }
        if stickManX > blockViewX + blockViewWidth || stickManWidth + stickManX < blockViewX {
            
            stickManImageView.frame.origin.x -= step
            stickManImageView.frame.origin.y += step
        } else {
            if stickManY > blockViewHeight + blockViewY || stickManHeight + stickManY < blockViewY {
                stickManImageView.frame.origin.x -= step
                stickManImageView.frame.origin.y += step
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
            stickManImageView.frame.origin.y += step
            stickManImageView.frame.origin.x += step
        } else {
            if stickManY > blockViewHeight + blockViewY || stickManHeight + stickManY < blockViewY {
                stickManImageView.frame.origin.y += step
                stickManImageView.frame.origin.x += step
            }
        }
        if stickManY + stickManHeight < blockViewY || stickManY > blockViewHeight + blockViewY {
            stickManImageView.frame.origin.y += step
            stickManImageView.frame.origin.x += step
        } else {
            if stickManX > blockViewWidth + blockViewX || stickManX + stickManWidth < blockViewX {
                
                stickManImageView.frame.origin.y += step
                stickManImageView.frame.origin.x += step
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
            stickManImageView.frame.origin.y -= step
            stickManImageView.frame.origin.x += step
        } else {
            if stickManY > blockViewHeight + blockViewY || stickManHeight + stickManY < blockViewY {
                stickManImageView.frame.origin.y -= step
                stickManImageView.frame.origin.x += step
            }
        }
        if stickManY < blockViewY || stickManY > blockViewHeight + blockViewY {
            stickManImageView.frame.origin.y -= step
            stickManImageView.frame.origin.x += step
        } else {
            if stickManX > blockViewWidth + blockViewX || stickManX + stickManWidth < blockViewX {
                
                stickManImageView.frame.origin.y -= step
                stickManImageView.frame.origin.x += step
            }
        }
    }
}
