//
//  PartTime.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class PartTime: Employee {
    
    private(set) var rate: Double?
    private(set) var hoursWorked: Double?
    
    override init() {
        super.init()
        self.rate = 0.0
        self.hoursWorked = 0.0
    }
    
    init(name: String, age: Int, email: String, vehicle: Vehicle?, rate: Double, hoursWorked: Double) {
        super.init(name: name, age: age, email: email, vehicle: vehicle)
        self.rate = rate
        self.hoursWorked = hoursWorked
    }
    
    override func printMyData() -> String {
        return super.printMyData()
    }
    
}
