//
//  FullTime.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class FullTime: EmployeementDetail {
    
    private var salary: Double
    private var bonus: Double
    
    init(salary: Double, bonus: Double) {
        self.salary = salary
        self.bonus = bonus
    }
    
    func printMyData() -> String {
        
    }
    
    func calcEarning() -> Double {
        return salary + bonus
    }
    
    func calcBirthYear(age: Int) -> Int {
        let date = Date()
        let year = Calendar.current.component(.year, from: date)
        return year - age
    }
    
}
