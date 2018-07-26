import XCTest
@testable import stickman

class stickmanTests: XCTestCase {
    
    func testIfElse03() {
        let a = 13
        let b = 11
        
        if (a + b) % 2 == 0 {
            print("even")
        } else {
            print("odd")
        }
    }
    
    func testIfElse02() {
        let a = 11
        let b = 11
        
        if a > b {
            print("a is greater than b")
        } else {
            print("a is smaller than b, or a is same as b")
        }
    }
    
    func testIfElse01() {
        let a = 12
    
        if a % 3 == 0 {
            print("a is 3的倍数")
        } else {
            print("a is not 3的倍数")
        }
    }
    
    func testLoop() {
        for i in 1...5 {
            print("\(i * 1)")
        }
    }

    func testExample() {
        print("My name is Chandler.")
        
        let a = 2
        let b = 3
        let c = a + b
        
        print("a is \(a)")
        print("b is \(b)")
        print("c is \(c)")
    }

    
}
