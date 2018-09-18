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
    
    init(name: String, age: Int, vehicle: Vehicle?, rate: Double, hoursWorked: Double, commissionPerc: Double) {
        super.init(name: name, age: age, vehicle: vehicle, employeeType: "PTC", rate: rate, hoursWorked: hoursWorked)
        self.commissionPerc = commissionPerc
    }
    
    override func calcEarning() -> Double {
        return (rate! * hoursWorked!) + (rate! * hoursWorked!) * (commissionPerc! / 100)
    }
    
    override func printMyData() -> String {
        return super.printMyData() + "\nEmployee is PartTime / Commissioned\n" + "\t-Rate: \(rate!)\n" + "\t-Hours Worked: \(hoursWorked!)\n" + "\t-Commision: \(commissionPerc!)%\n" + "\t-Earnings: \(calcEarning()) (\(rate! * hoursWorked!) + \(commissionPerc!)% of \(rate! * hoursWorked!))\n" + "***************************************************"
    }
}
