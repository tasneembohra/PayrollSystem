//
//  main.swift
//  PayrollSystem
//
//  Created by Tasneem on 10/09/18.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

let employee = JSONUtility.readEmplyeeData(fromFile: "employees")
FileUtility.printObjectToFile(employee)
