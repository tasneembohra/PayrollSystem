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
    
    init(brand: String, yearOfProduction: Int, engineType: String, color: String, registrationNumber: String, numberOfSeats: Int) {
        super.init(brand: brand, yearOfProduction: yearOfProduction, engineType: engineType, color: color, registrationNumber: registrationNumber)
        self.numberOfSeats = numberOfSeats
    }
    
    override func printMyData() {
        super.printMyData()
        print("Number Of Seats: \(self.numberOfSeats!)")
    }
    
}
