//
//  ViewController.swift
//  stickman
//
//  Created by Donald Sheng on 2018-06-24.
//  Copyright © 2018 GoldThumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let STEP: CGFloat = 10.0

    @IBOutlet weak var stickmanImageView: UIImageView!
    @IBOutlet weak var blockView: UIView!
    
    @IBAction func leftTapped(_ sender: UIButton) {
        if !stickmanTouchingMiddleRow() ||
            stickmanTouchingMiddleRow() &&
            !stickmanWillStepIntoMiddleColumnWith(deltaX: -STEP) {
            stickmanImageView.frame.origin.x -= STEP
        }
    }
    
    @IBAction func upTapped(_ sender: UIButton) {
        if !stickmanTouchingMiddleColumn() ||
            stickmanTouchingMiddleColumn() &&
            !stickmanWillStepIntoMiddleRowWith(deltaY: -STEP) {
            stickmanImageView.frame.origin.y -= STEP
        }
    }
    
    @IBAction func downTapped(_ sender: UIButton) {
        if !stickmanTouchingMiddleColumn() ||
            stickmanTouchingMiddleColumn() &&
            !stickmanWillStepIntoMiddleRowWith(deltaY: STEP) {
            stickmanImageView.frame.origin.y += STEP
        }
    }
    
    @IBAction func rightTapped(_ sender: UIButton) {
        if !stickmanTouchingMiddleRow() ||
            stickmanTouchingMiddleRow() &&
            !stickmanWillStepIntoMiddleColumnWith(deltaX: STEP) {
            stickmanImageView.frame.origin.x += STEP
        }
    }
    
    func stickmanWillStepIntoMiddleColumnWith(deltaX: CGFloat) -> Bool {
        if deltaX == 0 { // not moving
            return false
        } else if deltaX > 0 { // going right
            let stickmanRight = stickmanImageView.frame.origin.x + stickmanImageView.frame.width
            return stickmanRight < blockView.frame.origin.x && stickmanRight + deltaX >= blockView.frame.origin.x
        } else { // going left
            let blockViewRight = blockView.frame.origin.x + blockView.frame.width
            return stickmanImageView.frame.origin.x > blockViewRight &&  stickmanImageView.frame.origin.x + deltaX <= blockViewRight
        }
    }
    
    func stickmanWillStepIntoMiddleRowWith(deltaY: CGFloat) -> Bool {
        if deltaY == 0 { // not moving
            return false
        } else if deltaY > 0 { // going down
            let stickmanBottom = stickmanImageView.frame.origin.y + stickmanImageView.frame.height
            return stickmanBottom < blockView.frame.origin.y && stickmanBottom + deltaY >= blockView.frame.origin.y
        } else { // going up
            let blockViewBottom = blockView.frame.origin.y + blockView.frame.height
            return stickmanImageView.frame.origin.y > blockViewBottom && stickmanImageView.frame.origin.y + deltaY <= blockViewBottom
        }
    }
    
    func stickmanTouchingMiddleRow() -> Bool {
        return stickmanImageView.frame.origin.y + stickmanImageView.frame.height >= blockView.frame.origin.y &&
            stickmanImageView.frame.origin.y <= blockView.frame.origin.y + blockView.frame.height
    }

    func stickmanTouchingMiddleColumn() -> Bool {
        return stickmanImageView.frame.origin.x + stickmanImageView.frame.width >= blockView.frame.origin.x &&
            stickmanImageView.frame.origin.x <= blockView.frame.origin.x + blockView.frame.width
    }
}

