//
//  CommissionBasedPartTime.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class CommissionBasedPartTime: PartTime, Employee, IPrintable {
    var name: String
    var age: Int
    var rate: Double
    var hoursWorked: Double
    private var commissionPerc: Double
    
    init(name: String, age: Int, rate: Double, hoursWorked: Double, commissionPerc: Double){
        self.name = name
        self.age = age
        self.rate = rate
        self.hoursWorked = hoursWorked
        self.commissionPerc = commissionPerc
    }
    
    func printMyData() -> String {
        
    }
    
    func calcEarning() -> Double {
        let fixedSalary = rate * hoursWorked
        return fixedSalary + fixedSalary * (commissionPerc / 100)
    }
    
    func calcBirthYear(age: Int) -> Int {
        let date = Date()
        let year = Calendar.current.component(.year, from: date)
        return year - age
    }
    
}
