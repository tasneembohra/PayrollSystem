//
//  FullTime.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class FullTime: Employee {
    
    private var salary: Double?
    private var bonus: Double?
    
    override init() {
        super.init()
        self.salary = 0.0
        self.bonus = 0.0
    }
    
    init(name: String, age: Int, email: String, vehicle: Vehicle?, salary: Double, bonus: Double) {
        super.init(name: name, age: age, email: email, vehicle: vehicle)
        self.salary = salary
        self.bonus = bonus
    }
    
    
    override func calcEarning() -> Double {
        return salary! + bonus!
    }
    
    
    override func printMyData() -> String {
        return super.printMyData() + "\nEmployee is Full Time\n" + "\t-Salary: \(salary!.Formatting())\n" + "\t-Bonus: \(bonus!.Formatting())\n" + "\t-Earnings: \(calcEarning().Formatting())(\(salary!.Formatting()) + \(bonus!.Formatting())))\n" + "***************************************************"
    }
}
