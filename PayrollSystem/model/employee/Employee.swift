//
//  Employee.swift
//  PayrollSystem
//
//  Created by Tasneem on 11/09/18.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class  Employee: IPrintable {
    private(set) var name: String?
    private var age: Int?
    private var vehicle: Vehicle?  // connect Emplyee and Vehicle, Employee might has a vehicle
    
    init() {
        self.name = ""
        self.age = 0
        self.vehicle = nil
    }
    
    init(name: String, age: Int, vehicle: Vehicle?, employeeType: String){
        self.name = name
        self.age = age
        if let v = vehicle {
            self.vehicle = v
        }
        else {
            self.vehicle = nil
        }
    }
    
    func calcBirthYear() -> Int {
        if age! > 0 {
            let date = Date()
            let year = Calendar.current.component(.year, from: date)
            return year - age!
        }
        return 0
    }
    
    // Must be overriden by the child classes
    func calcEarning() -> Double {
        return 0.0
    }
    
    func printMyData() -> String {
        var output = "\nName: \(self.name!)"
        + "\nYear of Birth: \(calcBirthYear())"
        
        if let v = vehicle {
            output += v.printMyData()
        } else {
            output += "\nEmployee has no Vehicle registered"
        }
        return output
    }
    
}
