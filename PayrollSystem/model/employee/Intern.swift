//
//  Intern.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class Intern: EmployeementDetail {
    private var schoolName: String
    private var internSalary: Double
    
    init(schoolName: String, internSalary: Double) {
        self.schoolName = schoolName
        self.internSalary = internSalary
    }
    
    func printMyData() -> String {
        
    }
    
    func calcEarning() -> Double {
        return internSalary
    }
    
    func calcBirthYear(age: Int) -> Int {
        let date = Date()
        let year = Calendar.current.component(.year, from: date)
        return year - age
    }
    
}
