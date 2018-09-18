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
                        do {
                            if let dict = employee as? Dictionary<String, Any> {
                                // Getting employee name and age
                                let name = dict["name"] as? String
                                if (name == nil || name!.count < 3) {
                                    throw DataValidationError.invalidName(userName: name, charRequired: 3)
                                }
                                
                                let age = dict["age"] as? Int
                                if (age == nil || age! < 18) {
                                    throw DataValidationError.ageInvalid(userName: name!, minimumAge: 18)
                                }
                                
                                var email = dict["email"] as? String
                                if email != nil {
                                    try isEmailValid(email!)
                                } else {
                                    email = "NA"
                                }
                                
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
                                if (employement == nil) { throw DataValidationError.employmentDetails(userName: name!) }
                                // Initialize emplyoment object
                                switch (employement?["type"] as! String) {
                                    case "parttime-fixed":
                                        // Part time fixed
                                        let rate = employement!["rate"] as? Double
                                        if (rate == nil || rate! <= 0.0) {
                                            throw DataValidationError.invalidDouble(userName: name!, fieldName: "rate")
                                        }
                                        let hours = employement!["hours_worked"] as? Double
                                        if (hours == nil || hours! <= 0.0) {
                                            throw DataValidationError.invalidDouble(userName: name!, fieldName: "hours_worked")
                                        }
                                        let fixedAmount = employement!["fixed_amount"] as? Double
                                        if (fixedAmount == nil || fixedAmount! <= 0.0) {
                                            throw DataValidationError.invalidDouble(userName: name!, fieldName: "fixed_amount")
                                        }
                                        employeeObj = FixedBasedPartTime(name: name!, age: age!, email: email!, vehicle: vehicleObj, rate: rate!, hoursWorked: hours!, fixedAmmount: fixedAmount!)
                                    case "parttime-commission":
                                        // Part time commission
                                        let rate = employement!["rate"] as? Double
                                        if (rate == nil || rate! <= 0.0) {
                                            throw DataValidationError.invalidDouble(userName: name!, fieldName: "rate")
                                        }
                                        let hours = employement!["hours_worked"] as? Double
                                        if (hours == nil || hours! <= 0.0) {
                                            throw DataValidationError.invalidDouble(userName: name!, fieldName: "hours_worked")
                                        }
                                        let commissionPerc = employement!["commision"] as? Double
                                        if (commissionPerc == nil || commissionPerc! <= 0.0) {
                                            throw DataValidationError.invalidDouble(userName: name!, fieldName: "commision")
                                        }
                                        employeeObj = CommissionBasedPartTime(name: name!, age: age!, email: email!, vehicle: vehicleObj, rate: rate!, hoursWorked: hours!, commissionPerc: commissionPerc!)
                                    //fulltime worker
                                    case "fulltime":
                                        let salary = employement!["salary"] as? Double
                                        if (salary == nil || salary! <= 0.0) {
                                            throw DataValidationError.invalidDouble(userName: name!, fieldName: "salary")
                                        }
                                        let bonus = employement!["bonus"] as? Double ?? 0.0
                                        employeeObj = FullTime(name: name!, age: age!, email: email!,  vehicle: vehicleObj, salary: salary!, bonus: bonus)
                                    //intern worker
                                    case "intern":
                                        let schoolName = employement!["school_name"] as? String ?? "NA"
                                        let internSalary = employement!["earning"] as? Double
                                        if (internSalary == nil || internSalary! <= 0.0) {
                                            throw DataValidationError.invalidDouble(userName: name!, fieldName: "earning")
                                        }
                                        employeeObj = Intern(name: name!, age: age!, email: email!, vehicle: vehicleObj, schoolName: schoolName, internSalary: internSalary!)
                                    default: continue
                                }
                                employeeList.append(employeeObj)
                            }
                        } catch DataValidationError.invalidName(let userName, let charRequired) {
                            print("\nInvalid User Name :  \(userName!) should not be of less than \(charRequired) caharcters")
                        } catch DataValidationError.ageInvalid(let userName, let minimumAge){
                            print("\nMinimum age of an employee named \(userName) should be \(minimumAge)")
                        } catch DataValidationError.invalidDouble(let userName, let fieldName) {
                            print("\nField \(fieldName) value should be only in Double and greater than 0.0 for  employee named \(userName)")
                        } catch DataValidationError.employmentDetails(let userName) {
                            print("\nemployement data is required for employee named \(userName)")
                        } catch DataValidationError.emailValidation(let value) {
                            print("\nInvlid email: \(value). It should be like example@example.com")
                        } catch {
                            print("\nUnexpected error: \(error).")
                        }
                    }
                }
            } catch {
                print("Unexpected error: \(error).")
            }
        } else {
            print("Copy employees.json and move to \(Bundle.main.bundlePath)")
        }
        return employeeList
    }
}
