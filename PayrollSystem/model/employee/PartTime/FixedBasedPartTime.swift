//
//  FixedBasedPartTime.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class FixedBasedPartTime: PartTime {

    private var fixedAmmount: Int?
    
    override init() {
        super.init()
        self.fixedAmmount = 0
    }
    
    init(name: String, age: Int, vehicle: Vehicle?, rate: Double, hoursWorked: Double, fixedAmmount: Int){
        super.init(name: name, age: age, vehicle: vehicle, employeeType: "PTF", rate: rate, hoursWorked: hoursWorked)
        self.fixedAmmount = fixedAmmount
    }
    
    override func calcEarning() -> Double {
        return (rate! * hoursWorked!) + Double(fixedAmmount!)
    }
    
    override func printMyData() -> String {
       return super.printMyData() + "\nEmployee is PartTime / Fixed Amt\n" + "\t-Rate: \(rate!)\n" + "\t-Hours Worked: \(hoursWorked!)\n" + "\t-Fixed Ammount: \(fixedAmmount!)\n" + "\t-Earnings: \(calcEarning()) (\(rate! * hoursWorked!) + \(fixedAmmount!))\n" + "***************************************************"
    }

    
}
