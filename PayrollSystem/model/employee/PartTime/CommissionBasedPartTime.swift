//
//  CommissionBasedPartTime.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class CommissionBasedPartTime: PartTime {

    private var commissionPerc: Double?
    
    override init() {
        super.init()
        self.commissionPerc = 0.0
    }
    
    init(name: String, age: Int, email: String, vehicle: Vehicle?, rate: Double, hoursWorked: Double, commissionPerc: Double) {
        super.init(name: name, age: age, email: email, vehicle: vehicle, rate: rate, hoursWorked: hoursWorked)
        self.commissionPerc = commissionPerc
    }
    
    override func calcEarning() -> Double {
        return (rate! * hoursWorked!) + (rate! * hoursWorked!) * (commissionPerc! / 100)
    }
    
    override func printMyData() -> String {
        return super.printMyData() + "\nEmployee is PartTime / Commissioned\n" + "\t-Rate: \(rate!.Formatting())\n" + "\t-Hours Worked: \(hoursWorked!.hours)\n" + "\t-Commision: \(commissionPerc!)%\n" + "\t-Earnings: \(calcEarning().Formatting()) (\((rate! * hoursWorked!).Formatting()) + \(commissionPerc!)% of \((rate! * hoursWorked!).Formatting()))\n" + "***************************************************"
    }
}
