//
//  Employee.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

protocol Employee {
    var name: String {get set}
    var age: Int {get set}
    var calcBirthYear: Int {
        return 2019 - age
    }
    var calcEarnings: Int {
        return 1000
    }
}
