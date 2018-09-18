//
//  JSONUtility.swift
//  PayrollSystem
//
//  Created by Tasneem on 10/09/18.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation
class JSONUtility {
    static func readEmplyeeData(fromFile:String) -> [Employee] {
        var employeeList:[Employee] = []
        if let path  = Bundle.main.path(forResource: fromFile, ofType: "json") {
            print("Reading data from \(path)")
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let emplyees = jsonResult as? [Any] {
                    for employee in emplyees {
                        if let dict = employee as? Dictionary<String, Any> {
                            // Getting employee name and age
                            let name = dict["name"] as? String ?? "NA"
                            let age = dict["age"] as? Int ?? 0
                            
                            // Getting employee vehicle
                            var vehicleObj:Vehicle?
                            let vehicleDic = dict["vehicle"] as? Dictionary<String, Any>
                            if (vehicleDic != nil) {
                                let brand = vehicleDic!["model"] as? String ?? "NA"
                                let yearOfProduction = vehicleDic!["year"] as? Int ?? 0
                                let engineType = vehicleDic!["engine_type"] as? String ?? "NA"
                                let color = vehicleDic!["color"] as? String ?? "NA"
                                let registrationNumber = vehicleDic!["registration_no"] as? String ?? "NA"
                                let stroller = vehicleDic!["stroller"] as? Bool ?? false
                                let seat = vehicleDic!["seater"] as? Int ?? 0
                                let type = vehicleDic?["type"] as? String ?? "NA"
                                if (type == "motorcycle") {
                                    // Initialize with motorcycle
                                    vehicleObj = Motorcycle(make: brand, yearOfProduction: yearOfProduction, engineType: engineType, color: color, plate: registrationNumber, hasBasket: stroller)
                                } else if (type == "car") {
                                    // Initializing with car
                                    vehicleObj = Car(make: brand, yearOfProduction: yearOfProduction, engineType: engineType, color: color, plate: registrationNumber, numberOfSeats: seat)
                                }
                            }
                            
                            // Getting employee employement details
                            let employeeObj:Employee
                            let employement = dict["employement"] as? Dictionary<String, Any>
                            if (employement == nil) { return employeeList }
                            // Initialize emplyoment object
                            switch (employement?["type"] as! String) {
                                case "parttime-fixed":
                                    // Part time fixed
                                    let rate = employement!["rate"] as? Double ?? 0.0
                                    let hours = employement!["hours_worked"] as? Double ?? 0.0
                                    let fixedAmount = employement!["fixed_amount"] as? Int ?? 0
                                    employeeObj = FixedBasedPartTime(name: name, age: age, vehicle: vehicleObj, rate: rate, hoursWorked: hours, fixedAmmount: fixedAmount)
                                case "parttime-commission":
                                    // Part time commission
                                    let rate = employement!["rate"] as? Double ?? 0.0
                                    let hours = employement!["hours_worked"] as? Double ?? 0.0
                                    let commissionPerc = employement!["commision"] as? Double ?? 0.0
                                    employeeObj = CommissionBasedPartTime(name: name, age: age, vehicle: vehicleObj, rate: rate, hoursWorked: hours, commissionPerc: commissionPerc)
                                //fulltime worker
                                case "fulltime":
                                    let salary = employement!["salary"] as? Double ?? 0.0
                                    let bonus = employement!["bonus"] as? Double ?? 0.0
                                    employeeObj = FullTime(name: name, age: age, vehicle: vehicleObj, salary: salary, bonus: bonus)
                                //intern worker
                                case "intern":
                                    let schoolName = employement!["school_name"] as? String ?? "NA"
                                    let internSalary = employement!["earning"] as? Double ?? 0.0
                                    employeeObj = Intern(name: name, age: age, vehicle: vehicleObj, schoolName: schoolName, internSalary: internSalary)
                                default: continue
                            }
                            employeeList.append(employeeObj)
                        }
                    }
                }
            } catch {
                print("Error while reading")
            }
        } else {
            print("Copy employee.json and move to \(Bundle.main)")
        }
        return employeeList
    }
}
