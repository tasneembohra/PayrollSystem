//
//  JSONUtility.swift
//  PayrollSystem
//
//  Created by Tasneem on 10/09/18.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation
class JSONUtility {
    static func readEmplyeeData(fromFile:String) { // Return employee object
        if let path  = Bundle.main.path(forResource: fromFile, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let emplyees = jsonResult as? [Any] {
                    for employee in emplyees {
                        if let dict = employee as? Dictionary<String, Any> {
                            // Initialize employee object
                            let name = dict["name"] as? String ?? "NA"
                            print(name)
                            let employement = dict["employement"] as? Dictionary<String, Any>
                            if (employement != nil) {
                                // Initialize emplyoment object
                                switch (employement?["type"] as! String) {
                                    case "parttime": print("parttime")
                                    case "fulltime": print("fulltime")
                                    case "intern": print("intern")
                                default: print("")
                                }
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
        }
    }
}
