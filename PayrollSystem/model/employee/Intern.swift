//
//  Intern.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class Intern: Employee, IPrintable {
    
    var name: String
    var age: Int
    private var schoolName: String
    private var internSalary: Double
    
    init(name: String, age: Int, schoolName: String, internSalary: Double) {
        self.name = name
        self.age = age
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
