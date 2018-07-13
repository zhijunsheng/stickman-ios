//
//  ClassStructTests.swift
//  DeletemeTests
//
//  Created by Kevin on 2018-07-12.
//  Copyright © 2018 Kevin. All rights reserved.
//

import XCTest

class ClassStructTests: XCTestCase {
    
    func testClass() {
        let myFood = Food()
        let yourFood = myFood
        XCTAssertEqual("vanilla icecream" , myFood.dessert)
        yourFood.dessert = "Rubber"
        XCTAssertEqual("Rubber" , myFood.dessert)
    }
    
    func testStruct() {
        let drinks = DrinkMenu(drink1: "Pineapple drink", drink2: "Apple drink")
        var betterDrinks = drinks
        betterDrinks.drink1 = "Orange Juice!"
        XCTAssertEqual("Pineapple drink", drinks.drink1)
        XCTAssertEqual("Orange Juice!", betterDrinks.drink1)
    }
    
}

class Food {  // reference type
    var appetizer: String
    var main : String
    var dessert : String
    init() {
        self.appetizer = "bacon"
        self.main = "steak"
        self.dessert = "vanilla icecream"
    }
}

struct DrinkMenu {  // value type
    var drink1 = "Water"
    var drink2 = "Orange Juice"
}
