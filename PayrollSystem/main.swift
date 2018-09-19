//
//  main.swift
//  PayrollSystem
//
//  Created by Tasneem on 10/09/18.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

var employees = JSONUtility.readEmplyeeData(fromFile: "employees")

if (employees.count > 0) {
    employees = employees.sorted(by: {$0.name! < $1.name!})
    var totalPayroll = 0.0
    var output = ""
    for employee in employees {
        output += employee.printMyData()
        totalPayroll += employee.calcEarning()
    }
    output += "\n\nTOTAL PAYROLL: \(totalPayroll.Formatting())\n"
    print(output)
    FileUtility.printData(output, toFile: "employees_output.txt")
    print()
} else {
    print("\nEmployee list is empty.\n")
}
