//
//  Vehicle.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class Vehicle: IPrintable {
    
    var make: String?
    var yearOfProduction: Int?
    var engineType: String?
    var color: String?
    var plate: String?
    
    init() {
        self.make = ""
        self.yearOfProduction = 0
        self.engineType = ""
        self.color = ""
        self.plate = ""
    }
    
    init(make: String, yearOfProduction: Int, engineType: String, color: String, plate: String) {
        self.make = make
        self.yearOfProduction = yearOfProduction
        self.engineType = engineType
        self.color = color
        self.plate = plate
    }
    
    func printMyData() {
        print("  -Make: \(make!)")
        print("  -Plate: \(plate!)")
        print("  -Year Of Production: \(yearOfProduction!)")
        print("  -Engine Type: \(engineType!)")
        print("  -Color: \(color!)")
    }
}

