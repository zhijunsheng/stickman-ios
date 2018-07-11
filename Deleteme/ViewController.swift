//
//  ViewController.swift
//  Deleteme
//
//  Created by Kevin on 2018-07-10.
//  Copyright © 2018 Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var blockView: UIView!
    
    @IBOutlet weak var blockViewOrange: UIView!
    
    @IBAction func downTapped(_ sender: UIButton) {
        let y = blockView.frame.origin.y
        print (y)
        if y <= 650{
            blockView.frame.origin.y += 10
        }
    }
    @IBAction func rightTapped(_ sender: UIButton) {
        let x = blockView.frame.origin.x
        print (x)
        if x <= 350{
            blockView.frame.origin.x += 10
        }
    }
    @IBAction func upTapped(_ sender: UIButton) {
        let y = blockView.frame.origin.y
        print (y)
        if y >= 0{
            blockView.frame.origin.y -= 10
        }
    }
    @IBAction func leftTapped(_ sender: UIButton) {
        let x = blockView.frame.origin.x
        print (x)
        if x >= 0{
            blockView.frame.origin.x -= 10
        }
    }
}

