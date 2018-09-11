//
//  Motorcycle.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class Motorcycle: Vehicle {
    
    var brand: String
    var yearOfProduction: Int
    var engineType: String
    var color: String
    var registrationNumber: String
    private var hasBasket: Bool
    
    init(hasBasket: Bool, brand: String, yearOfProduction: Int, engineType: String, color: String, registrationNumber: String) {
        self.hasBasket = hasBasket
        self.brand = brand
        self.yearOfProduction = yearOfProduction
        self.engineType = engineType
        self.color = color
        self.registrationNumber = registrationNumber
    }
    
    func display() {
        print("Employee has a motor")
    }
    
}
