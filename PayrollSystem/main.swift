//
//  main.swift
//  PayrollSystem
//
//  Created by Tasneem on 10/09/18.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

let employees = JSONUtility.readEmplyeeData(fromFile: "employees")
//FileUtility.printObjectToFile(employee)

var totalPayroll = 0.0

for employee in employees {
    employee.printMyData()
    totalPayroll += employee.totalEarnings!
}

print("TOTAL PAYROLL: \(totalPayroll) Canadian Dollars")
