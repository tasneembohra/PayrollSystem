//
//  FixedBasedPartTime.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class FixedBasedPartTime: PartTime {

    private var fixedAmmount: Double?
    
    override init() {
        super.init()
        self.fixedAmmount = 0
    }
    
    init(name: String, age: Int, email: String, vehicle: Vehicle?, rate: Double, hoursWorked: Double, fixedAmmount: Double){
        super.init(name: name, age: age, email: email, vehicle: vehicle, rate: rate, hoursWorked: hoursWorked)
        self.fixedAmmount = fixedAmmount
    }
    
    override func calcEarning() -> Double {
        return (rate! * hoursWorked!) + fixedAmmount!
    }
    
    override func printMyData() -> String {
       return super.printMyData() + "\n\nEmployee is PartTime / Fixed Amt\n" +
        "\t* Rate: \(rate!.Formatting())\n" +
        "\t* Hours Worked: \(hoursWorked!.hours)\n" +
        "\t* Fixed Amount: \(fixedAmmount!.Formatting())\n" +
        "\t* Earnings: \(calcEarning().Formatting()) (\((rate! * hoursWorked!).Formatting()) + \(fixedAmmount!.Formatting()))\n" + "***************************************************************"
    }

    
}
