//
//  FullTime.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class FullTime: Employee {
    
    var salary: Double?
    var bonus: Double?
    
    override init() {
        super.init()
        self.salary = 0.0
        self.bonus = 0.0
    }
    
    init(name: String, age: Int, vehicle: Vehicle?, salary: Double, bonus: Double) {
        super.init(name: name, age: age, vehicle: vehicle, employeeType: "FT")
        self.salary = salary
        self.bonus = bonus
        self.totalEarnings = calcEarning()
    }
    
    
    func calcEarning() -> Double {
        return salary! + bonus!
    }
    
    
    override func printMyData() -> String {
        return super.printMyData() + "\nEmployee is Full Time\n" + "\t-Salary: \(salary!)\n" + "\t-Bonus: \(bonus!)\n" + "\t-Earnings: \(String(describing: self.totalEarnings))(\(salary!) + \(bonus!)))\n" + "***************************************************"
    }
}
