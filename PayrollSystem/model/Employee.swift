//
//  Employee.swift
//  PayrollSystem
//
//  Created by Tasneem on 11/09/18.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class  Employee: IPrintable {
    var name:String?
    var age:Int?
    var employeementDetail:EmployeementDetail?
    var vehicle:Vehicle?
    
    func printMyData() -> String {
        employeementDetail!.printMyData()
    }
}
