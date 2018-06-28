//
//  WhileTests.swift
//  MovingBlockTests
//
//  Created by Peter Shi on 2018-05-11.
//  Copyright © 2018 Peter Shi. All rights reserved.
//

import XCTest

class WhileTests: XCTestCase {
    
    func testSigma() {
        10
    }
    
    func testPrintTriangle2() {
        
        var b = 9
        var a = 1
        while b > 1 {
            //print("MMMMMMMMEEEEEEEEOOOOOOOOOWWWWWWWWW!!!!!!!!!(^~.~^)>- =~,-,|>")
            b -= 1
            a = 1
            while a < b {
                print("\(a)", terminator: "")
                a += 1
            }
            print("", terminator: "\n")
        }
    }
    
    func testPrintTriangle() {
        
        var b = 1
        var a = 1
        while b < 8 {
            //print("MMMMMMMMEEEEEEEEOOOOOOOOOWWWWWWWWW!!!!!!!!!(^~.~^)>- =~,-,|>")
            b += 1
            a = 1
            while a < b {
                print("\(a)", terminator: "")
                a += 1
            }
            print("", terminator: "\n")
        }
    }
    
    func testPrint() {
        
        /*
         homework 1         homework 2
         1                  1234567
         12                 123456
         123                12345
         1234               1234
         12345              123
         123456             12
         1234567            1
        */
        
        var b = 3
        while b > 0 {
            b -= 1
            
            var a = 1
            while a < 8 {
                print("\(a)", terminator: "")
                a += 1
            }
            print("", terminator: "\n")
        }
        
    }
    
    func testWhileLoop() {
        
        var a = 0
        while a < 100 {
            print("a is \(a)")
            a += 1
        }
    }
    
    func testForLoop() {
        
        for a in 1...100 {
            print("\(a)")
        }
    }
}
