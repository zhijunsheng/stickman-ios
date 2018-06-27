//
//  ViewController.swift
//  Stickman
//
//  Created by Bowen Lin on 2018-06-17.
//  Copyright © 2018 Bowen Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let step: CGFloat = 10.0
    
    @IBOutlet weak var stickmanImageView: UIImageView!
    @IBOutlet weak var rectangleView: UIView!
    
    @IBAction func upPressed(_ sender: Any) {
        if !(areaSeven() && stickmanImageView.frame.origin.y < rectangleView.frame.origin.y + rectangleView.frame.height + step * 2) {
            stickmanImageView.frame.origin.y -= step
        }
    }
    
    @IBAction func downPressed(_ sender: Any) {
        if !(areaOne() && stickmanImageView.frame.origin.y + stickmanImageView.frame.height > rectangleView.frame.origin.y - step * 2) {
            stickmanImageView.frame.origin.y += step
        }
    }
    
    @IBAction func leftPressed(_ sender: Any) {
        if !(areaFive() && stickmanImageView.frame.origin.x < rectangleView.frame.origin.x + rectangleView.frame.width + step * 2) {
            stickmanImageView.frame.origin.x -= step
        }
    }
    
    @IBAction func rightPressed(_ sender: Any) {
        if !(areaThree() && stickmanImageView.frame.origin.x + stickmanImageView.frame.width > rectangleView.frame.origin.x - step * 2) {
            stickmanImageView.frame.origin.x += step
        }
    }
    
    func areaOne() -> Bool{
        return top() && middleX()
    }
    
    func areaThree() -> Bool {
        return middleY() && left()
    }
    
    func areaFive() -> Bool{
        return middleY() && right()
    }
    
    func areaSeven() -> Bool{
        return bottom() && middleX()
    }
    
    func left() -> Bool {
        return stickmanImageView.frame.origin.x < rectangleView.frame.origin.x + rectangleView.frame.width
    }
    
    func middleX() -> Bool {
       return stickmanImageView.frame.origin.x + stickmanImageView.frame.width > rectangleView.frame.origin.x - step && stickmanImageView.frame.origin.x < rectangleView.frame.origin.x + rectangleView.frame.width + step
    }
    
    func right() -> Bool {
        return stickmanImageView.frame.origin.x + stickmanImageView.frame.width > rectangleView.frame.origin.x
    }
    
    func bottom() -> Bool {
        return stickmanImageView.frame.origin.y > rectangleView.frame.origin.y + rectangleView.frame.height
    }
    
    func middleY() -> Bool {
        return stickmanImageView.frame.origin.y + stickmanImageView.frame.height > rectangleView.frame.origin.y - step && stickmanImageView.frame.origin.y < rectangleView.frame.origin.y + rectangleView.frame.height + step
    }
    
    func top() -> Bool {
        return stickmanImageView.frame.origin.y + stickmanImageView.frame.height < rectangleView.frame.origin.y
    }
}


