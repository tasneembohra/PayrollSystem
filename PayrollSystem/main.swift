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

var m1 = Motorcycle(brand: "Yamaha", yearOfProduction: 1993, engineType: "v2", color: "red", registrationNumber: "123abc", hasBasket: true)
var fix1 = FixedBasedPartTime(name: "Daian", age: 24, vehicle: m1, rate: 20.0, hoursWorked: 20, fixedAmmount: 120)
fix1.printMyData()

var fix2 = FixedBasedPartTime(name: "Ellie", age: 25, vehicle: nil, rate: 20.0, hoursWorked: 20, fixedAmmount: 120)
fix2.printMyData()
