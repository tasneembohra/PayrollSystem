//
//  Employee.swift
//  PayrollSystem
//
//  Created by Tasneem on 11/09/18.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class  Employee: IPrintable {
    var name: String?
    var age: Int?
    var vehicle: Vehicle?  // connect Emplyee and Vehicle, Employee might has a vehicle
    var employeeType: String? // for casting
    
    init() {
        self.name = ""
        self.age = 0
        self.vehicle = nil
        self.employeeType = "NONE"
    }
    
    init(name: String, age: Int, vehicle: Vehicle?, employeeType: String){
        self.name =  name
        self.age = age
        self.employeeType = employeeType
        if let v = vehicle {
            self.vehicle = v
        }
        else {
            self.vehicle = nil
        }
    }
    
    func calcBirthYear() -> Int {
        let date = Date()
        let year = Calendar.current.component(.year, from: date)
        return year - age!
    }
    
    /*func calcEarnings() -> Double {
        return 1000.0
    }*/
    
    func printMyData() {
        print("Name: \(self.name!)")
        print("Year of Birth: \(calcBirthYear())")
        if let v = vehicle
        {
            v.printMyData()
        }
        else {
            print("Employee has no Vehicle registered")
        }
    }
    
}
