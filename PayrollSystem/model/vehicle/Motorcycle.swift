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
    
    init(brand: String, yearOfProduction: Int, engineType: String, color: String, registrationNumber: String, hasBasket: Bool) {
        super.init(brand: brand, yearOfProduction: yearOfProduction, engineType: engineType, color: color, registrationNumber: registrationNumber)
        self.hasBasket = hasBasket
    }
    
    override func printMyData() {
        super.printMyData()
        if hasBasket == true
        {
            print("Motorcycle has a Basket")
        }
        else
        {
            print("Motorcycle has NOT a Basket")
        }
    }
    
}
