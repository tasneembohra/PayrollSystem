//
//  Vehicle.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class Vehicle: IPrintable {
    
    private var make: String?
    private var yearOfProduction: Int?
    private var engineType: String?
    private var color: String?
    private var plate: String?
    
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
    
    func printMyData() -> String {
        return "\t-Make: \(make!)" + "\n" + "\t-Plate: \(plate!)" + "\n" + "\t-Year Of Production: \(yearOfProduction!)" + "\n" + "\t-Engine Type: \(engineType!)" + "\n" + "\t-Color: \(color!)"
    }
}

