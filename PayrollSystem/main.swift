//
//  main.swift
//  PayrollSystem
//
//  Created by Tasneem on 10/09/18.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

var employees = JSONUtility.readEmplyeeData(fromFile: "employees")
employees = employees.sorted(by: {$0.name! < $1.name!})

var totalPayroll = 0.0
var output = ""

for employee in employees {
    output += employee.printMyData()
    totalPayroll += employee.totalEarnings!
}

output += "\n\nTOTAL PAYROLL: \(totalPayroll) Canadian Dollars"
print(output)

FileUtility.printData(output, toFile: "employees_output.txt")
