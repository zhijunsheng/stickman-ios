//
//  ViewController.swift
//  Deleteme
//
//  Created by Kevin on 2018-07-10.
//  Copyright © 2018 Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stickManView: UIView!
    
    @IBOutlet weak var blockView: UIView!
    
    let STEP: CGFloat = 10.0
    
    @IBAction func downTapped(_ sender: UIButton) {    
        if stickManY1() <= view.frame.height - stickManView.frame.height{
            if !(stickManX2() > blockX1() && stickManX1() < blockX2() && stickManY1() < blockY2() && stickManY2() > blcokY1() - STEP){
                stickManView.frame.origin.y += STEP
            }
        }
    }
    
    @IBAction func rightTapped(_ sender: UIButton) {
        if stickManX1() <= view.frame.width - stickManView.frame.width{
            if !(stickManY2() > blcokY1() && stickManY1() < blockY2() && stickManX1() < blockX2() && stickManX2() > blockX1() - STEP){
                stickManView.frame.origin.x += STEP
            }
        }
    }
    
    @IBAction func upTapped(_ sender: UIButton) {
        if stickManY1() >= view.frame.origin.y{
            if !(stickManX2() > blockX1() && stickManX1() < blockX2() && stickManY1() < blockY2() + STEP && stickManY2() > blcokY1()){
                stickManView.frame.origin.y -= STEP
            }
        }
    }
    
    @IBAction func leftTapped(_ sender: UIButton) {
        if stickManX1() >= view.frame.origin.x{
            if !(stickManY2() > blcokY1() && stickManY1() < blockY2() && stickManX1() < blockX2() + STEP && stickManX2() > blockX1()){
                stickManView.frame.origin.x -= STEP
            }
        }
    }
    
    func blockX1() -> CGFloat {
        return blockView.frame.origin.x
    }
    
    func blockX2() -> CGFloat {
        return blockView.frame.origin.x + blockView.frame.width
    }
    
    func blcokY1() -> CGFloat {
        return blockView.frame.origin.y
    }
    
    func blockY2() -> CGFloat {
        return blockView.frame.origin.y + blockView.frame.height
    }
    
    func stickManX1() -> CGFloat {
        return stickManView.frame.origin.x
    }
    
    func stickManX2() -> CGFloat {
        return stickManView.frame.origin.x + stickManView.frame.width
    }
    
    func stickManY1() -> CGFloat {
        return stickManView.frame.origin.y
    }
    
    func stickManY2() -> CGFloat {
        return stickManView.frame.origin.y + stickManView.frame.height
    }
}
