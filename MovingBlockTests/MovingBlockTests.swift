//
//  MovingBlockTests.swift
//  MovingBlockTests
//
//  Created by Peter Shi on 2018-04-27.
//  Copyright © 2018 Peter Shi. All rights reserved.
//

import XCTest
@testable import MovingBlock

class MovingBlockTests: XCTestCase {
    
    func testCalculatePi() {
        let ourPi = calculatePi(noOfItems: 1000000)
    }
    
    func calculatePi(noOfItems: Int) -> Double {
        
        // let sum = 1.0/1 + 1/4 + 1/9 + 1/16 + 1/25 + 1/36 + 1/49 + 1/64
        
        var sum = 0.0
        for x in 1...noOfItems {
            
            let denominator = Double(x * x)
            
            sum = sum + 1/denominator
            //print("\(sum)")
        
        }
        let pi = sqrt(sum * 6.0)
        print("real pi = \(Double.pi). Our pi is \(pi).")
        
        return pi
    }
    
    func testCalculatePi2() {
        let ourPi = calculatePi2(noOfItems: 1000000)
    }
    
    func calculatePi2(noOfItems: Int) -> Double {
        
        // let sum = 1.0/1 + 1/4 + 1/9 + 1/16 + 1/25 + 1/36 + 1/49 + 1/64... OR 4.0/1 - 4/3 + 4/5 - 4/7...
        
        var sum = 0.0
        var difference = 0.0
        for x in -1...noOfItems {
           //print("\(x)")
            let denominator = Double(x + 2)
            
            sum = sum + 4/denominator
            difference = (difference + 4/denominator) + 4/denominator - 4/(denominator - 2)
            //print("\(sum)")
          
        }
        
             let pi2 = 4 - (sum + difference)
        print("real pi = \(Double.pi). Our pi is \(pi2).")
        
        return pi2
 
    }
    
    
    
    
    
    func testInt() {
        let a = 7 / 2
        print("\(a)")
    }
    
    func testIsDivisible2 () {
        XCTAssertTrue(isDivisible2(dividend: 100, divisor: 25))
        XCTAssertFalse(isDivisible2(dividend: 12, divisor: 23))
    }
    
    
    func isDivisible2(dividend: Int, divisor: Int) -> Bool {
        // (^~.~^)~ meow = pi
        let quotient = dividend / divisor
        let product = quotient * divisor
        if product == dividend{
            return true
        } else {
            return false
        }
    }
    
    
    
    func testIsDivisible () {
        XCTAssertTrue(isDivisible(x: 100, y: 25))
        XCTAssertFalse(isDivisible(x: 12, y: 23))
    }
    
    
    func isDivisible(x: Int, y: Int) -> Bool {
        
        let remainder = x % y // try to NOT use % sign. HOMEWORK!!!!!!!!!!!!!
        
        if remainder == 0 {
            return true
        } else {
            return false
        }
        
    }
    
}

