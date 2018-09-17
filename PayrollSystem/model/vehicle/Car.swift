//
//  Car.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class Car: Vehicle {
    
    var numberOfSeats: Int?
    
    override init() {
        super.init()
        self.numberOfSeats = 0
    }
    
    init(make: String, yearOfProduction: Int, engineType: String, color: String, plate: String, numberOfSeats: Int) {
        super.init(make: make, yearOfProduction: yearOfProduction, engineType: engineType, color: color, plate: plate)
        self.numberOfSeats = numberOfSeats
    }
    
    override func printMyData() {
        print("Employee has a Car")
        super.printMyData()
        print(" -Number Of Seats: \(self.numberOfSeats!)")
    }
    
}
