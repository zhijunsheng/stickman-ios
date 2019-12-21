import XCTest

class IfElseTests: XCTestCase {
    
    func testArc4random() {
        let a = arc4random()
        let b = a % 1000
        print("a = \(a), b = \(b)")
    }
    
    func testIf() {
        
        for i in 1..<13 {
            if  i % 2 == 0 {
                
            }
        }
        for i in 1..<101 {
            if  i % 7 == 0 {
                print("\(i)")
            }
        }
    }
}
