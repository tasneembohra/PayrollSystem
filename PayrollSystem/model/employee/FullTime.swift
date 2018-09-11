//
//  FullTime.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class FullTime: Employee, IPrintable {
    
    var name: String
    var age: Int
    private var salary: Double
    private var bonus: Double
    
    init(name: String, age: Int, salary: Double, bonus: Double) {
        self.name = name
        self.age = age
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
