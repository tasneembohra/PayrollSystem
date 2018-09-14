//
//  Vehicle.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class Vehicle: IPrintable {
    
    var brand: String?
    var yearOfProduction: Int?
    var engineType: String?
    var color: String?
    var registrationNumber: String?
    
    init() {
        self.brand = ""
        self.yearOfProduction = 0
        self.engineType = ""
        self.color = ""
        self.registrationNumber = ""
    }
    
    init(brand: String, yearOfProduction: Int, engineType: String, color: String, registrationNumber: String) {
        self.brand = brand
        self.yearOfProduction = yearOfProduction
        self.engineType = engineType
        self.color = color
        self.registrationNumber = registrationNumber
    }
    
    func printMyData() {
        print("Brand: \(brand!)")
        print("Year Of Production: \(yearOfProduction!)")
        print("Engine Type: \(engineType!)")
        print("Color: \(color!)")
        print("Plate: \(registrationNumber!)")
    }
}

