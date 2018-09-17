//
//  PartTime.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class PartTime: Employee {
    
    var rate: Double?
    var hoursWorked: Double?
    
    override init() {
        super.init()
        self.rate = 0.0
        self.hoursWorked = 0.0
    }
    
    init(name: String, age: Int, vehicle: Vehicle?, employeeType: String, rate: Double, hoursWorked: Double) {
        super.init(name: name, age: age, vehicle: vehicle, employeeType: employeeType)
        self.rate = rate
        self.hoursWorked = hoursWorked
    }
    
    override func printMyData() {
        super.printMyData()
    }
    
}
