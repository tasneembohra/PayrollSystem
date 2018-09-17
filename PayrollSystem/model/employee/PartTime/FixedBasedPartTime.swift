//
//  FixedBasedPartTime.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class FixedBasedPartTime: PartTime {

    var fixedAmmount: Int?
    
    override init() {
        super.init()
        self.fixedAmmount = 0
    }
    
    init(name: String, age: Int, vehicle: Vehicle?, rate: Double, hoursWorked: Double, fixedAmmount: Int){
        super.init(name: name, age: age, vehicle: vehicle, employeeType: "PTF", rate: rate, hoursWorked: hoursWorked)
        self.fixedAmmount = fixedAmmount
    }
    
    func calcEarning() -> Double {
        return (rate! * hoursWorked!) + Double(fixedAmmount!)
    }
    
    override func printMyData() {
        super.printMyData()
        print("Employee is PartTime / Fixed Amt")
        print(" -Rate: \(rate!)")
        print(" -Hours Worked: \(hoursWorked!)")
        print(" -Fixed Ammount: \(fixedAmmount!)")
        print(" -Earnings: \(calcEarning())(\(rate! * hoursWorked!) + \(fixedAmmount!)")
        print("*******************************************")
    }

    
}
