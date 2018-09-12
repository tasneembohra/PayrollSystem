//
//  Vehicle.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

protocol Vehicle {
    
    var brand: String {get set}
    var yearOfProduction: Int {get set}
    var engineType: String {get set}
    var color: String {get set}
    var registrationNumber: String {get set}
}

