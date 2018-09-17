//
//  Intern.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class Intern: Employee {
   
    var schoolName: String?
    var internSalary: Double?
    
    override init() {
        super.init()
        self.schoolName = ""
        self.internSalary = 0.0
    }
    
    init(name: String, age: Int, vehicle: Vehicle?, schoolName: String, internSalary: Double) {
        super.init(name: name, age: age, vehicle: vehicle, employeeType: "INT")
        self.schoolName = schoolName
        self.internSalary = internSalary
    }
    
    
    func calcEarning() -> Double {
        return internSalary!
    }
    
    
    override func printMyData() {
        super.printMyData()
        print("Employee is Intern")
        print(" -School Name: \(schoolName!)")
        print(" -Salary: \(calcEarning())")
        print("*******************************************")
    }
    
}
