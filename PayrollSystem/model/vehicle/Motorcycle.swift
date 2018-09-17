//
//  Motorcycle.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class Motorcycle: Vehicle {

    var hasBasket: Bool?
    
    override init() {
        super.init()
        self.hasBasket = false
    }
    
    init(make: String, yearOfProduction: Int, engineType: String, color: String, plate: String, hasBasket: Bool) {
        super.init(make: make, yearOfProduction: yearOfProduction, engineType: engineType, color: color, plate: plate)
        self.hasBasket = hasBasket
    }
    
    override func printMyData() {
        print("Employee has a Motorcycle")
        super.printMyData()
        if hasBasket == true
        {
            print("  -Motorcycle has a Basket.")
        }
        else
        {
            print("  -Motorcycle has NOT a Basket.")
        }
    }
    
}
