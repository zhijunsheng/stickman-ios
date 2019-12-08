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
    
    @IBOutlet weak var blockView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func leftTapped(_ sender: UIButton) {
        blockView.frame.origin.x -= step
    }
    
    @IBAction func upTapped(_ sender: UIButton) {
        blockView.frame.origin.y -= step
    }
    
    @IBAction func downTapped(_ sender: UIButton) {
        blockView.frame.origin.y += step
    }
    
    @IBAction func rightTapped(_ sender: UIButton) {
        blockView.frame.origin.x += step
    }

    @IBAction func diagonalTapped1(_ sender: UIButton) {
        blockView.frame.origin.x -= step
        blockView.frame.origin.y -= step
    }
    
    @IBAction func diagonalTapped2(_ sender: UIButton) {
        blockView.frame.origin.x -= step
        blockView.frame.origin.y += step
    }
    
    @IBAction func diagonalTapped3(_ sender: UIButton) {
        blockView.frame.origin.x += step
        blockView.frame.origin.y += step
    }
    
    @IBAction func diagonalTapped4(_ sender: UIButton) {
        blockView.frame.origin.x += step
        blockView.frame.origin.y -= step
    }
}
