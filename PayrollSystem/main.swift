//
//  main.swift
//  PayrollSystem
//
//  Created by Tasneem on 10/09/18.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

//let employee = JSONUtility.readEmplyeeData(fromFile: "employees")
//FileUtility.printObjectToFile(employee)

var m1 = Motorcycle(make: "Yamaha", yearOfProduction: 1993, engineType: "v2", color: "red", plate: "123abc", hasBasket: true)
var fix1 = FixedBasedPartTime(name: "Daian", age: 24, vehicle: m1, rate: 20.0, hoursWorked: 20, fixedAmmount: 120)

var part1 = CommissionBasedPartTime(name: "Ellie", age: 25, vehicle: nil, rate: 15.5, hoursWorked: 40.0, commissionPerc: 12.0)

var car1 = Car(make: "Ford", yearOfProduction: 1980, engineType: "V8", color: "balck", plate: "432avc", numberOfSeats: 6)
var full1 = FullTime(name: "Pritesh", age: 34, vehicle: car1, salary: 4000.0, bonus: 1000.0)

var intern1 = Intern(name: "Ivan", age: 18, vehicle: nil, schoolName: "Lambton", internSalary: 800.0) //get set to make intern salsary as const

var empDictionary = [fix1, part1, full1, intern1]
empDictionary = empDictionary.sorted(by:{ $0.name! < $1.name! }) //sorting by name
//Casting
var total = 0.0
for e in empDictionary
{
    if e.employeeType == "PTC"
    {
        let emp = e as! CommissionBasedPartTime
        emp.printMyData()
        total += emp.calcEarning()
    }
    else if e.employeeType == "PTF" {
        let emp = e as! FixedBasedPartTime
        emp.printMyData()
        total += emp.calcEarning()
    }
    else if e.employeeType == "INT" {
        let emp = e as! Intern
        emp.printMyData()
        total += emp.calcEarning()
    }
    else if e.employeeType == "FT" {
        let emp = e as! FullTime
        emp.printMyData()
        total += emp.calcEarning()
    }
}
print("TOTAL PAYROLL: \(total) Canadian Dollars")
