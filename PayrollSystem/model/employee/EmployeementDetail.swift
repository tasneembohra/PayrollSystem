//
//  Employee.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

protocol EmployeementDetail: IPrintable {
    func calcBirthYear(age: Int) -> Int
    func calcEarning() -> Double
}
