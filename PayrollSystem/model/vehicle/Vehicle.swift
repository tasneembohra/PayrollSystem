//
//  Vehicle.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class Vehicle {
    
    var brand: String
    var yearOfProduction: Int
    var engineType: String
    var color: String
    var registrationNumber: String
    
    init(brand: String, yearOfProduction: Int, engineType: String, color: String, registrationNumber: String) {
        self.brand = String()
        self.yearOfProduction = 0
        self.engineType = String()
        self.color = String()
        self.registrationNumber = String()
    }
    
}
