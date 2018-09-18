//
//  Intern.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class Intern: Employee {
   
    private var schoolName: String?
    private var internSalary: Double?
    
    override init() {
        super.init()
        self.schoolName = ""
        self.internSalary = 0.0
    }
    
    init(name: String, age: Int, email: String, vehicle: Vehicle?, schoolName: String, internSalary: Double) {
        super.init(name: name, age: age, email: email, vehicle: vehicle)
        self.schoolName = schoolName
        self.internSalary = internSalary
    }
    
    
    override func calcEarning() -> Double {
        return internSalary!
    }
    
    override func printMyData() -> String {
        return super.printMyData() + "\nEmployee is Intern\n" + "\t-School Name: \(schoolName!)\n" + "\t-Salary: \(calcEarning().CAD)\n" + "***************************************************"
    }
    
}
