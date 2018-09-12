//
//  FixedBasedPartTime.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class FixedBasedPartTime: PartTime, EmployeementDetail {
    var rate: Double
    var hoursWorked: Double
    private var fixedAmmount: Int
    
    init(rate: Double, hoursWorked: Double, fixedAmmount: Int) {
        self.rate = rate
        self.hoursWorked = hoursWorked
        self.fixedAmmount = fixedAmmount
    }
    
    func printMyData() -> String {
        
    }
    
    func calcEarning() -> Double {
        return (rate * hoursWorked) + Double(fixedAmmount)
    }
    
    func calcBirthYear(age: Int) -> Int {
        let date = Date()
        let year = Calendar.current.component(.year, from: date)
        return year - age
    }
}
