//
//  PartTime.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

protocol PartTime: EmployeementDetail {
    
    var rate: Double {get set}
    var hoursWorked: Double {get set}
    
}
