//
//  JSONUtility.swift
//  PayrollSystem
//
//  Created by Tasneem on 10/09/18.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation
class JSONUtility {
    static func readEmplyeeData(fromFile:String) -> Employee {
        let employeeObj = Employee()
        if let path  = Bundle.main.path(forResource: fromFile, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let emplyees = jsonResult as? [Any] {
                    for employee in emplyees {
                        if let dict = employee as? Dictionary<String, Any> {
                            let name = dict["name"] as? String ?? "NA"
                            let age = dict["age"] as? Int
                            employeeObj.name = name
                            employeeObj.age = age
                            let employement = dict["employement"] as? Dictionary<String, Any>
                            if (employement == nil) { return employeeObj }
                            // Initialize emplyoment object
                            switch (employement?["type"] as! String) {
                            case "parttime":
                                let subType = employement!["sub_type"] as! String
                                if (subType == "fixed") {
                                    let rate = employement!["rate"] as! Double
                                    let hours = employement!["hours_worked"] as! Double
                                    let fixedAmount = employement!["fixed_amount"] as! Int
                                    employeeObj.employeementDetail = FixedBasedPartTime(rate: rate, hoursWorked: hours, fixedAmmount: fixedAmount)
                                } else if (subType == "commission") {
                                        
                                    } else {
                                        return employeeObj
                                    }
                                case "fulltime": print("fulltime")
                                case "intern": print("intern")
                                default: print("")
                            }
                            let vehicle = dict["vehicle"] as? Dictionary<String, Any>
                            if (vehicle != nil) {
                                let type = vehicle?["type"] as? String
                                if (type == "motorcycle") {
                                    // Initialize with motorcycle
                                } else if (type == "car") {
                                    // Initializing with car
                                }
                            }
                            print(dict)
                        }
                    }
                }
            } catch {
                print("Error while reading")
            }
            return employeeObj
        }
    }
}
