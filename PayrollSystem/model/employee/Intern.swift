//
//  Intern.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 10/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class Intern: Employee, IPrintable {
    
    var name: String
    var age: Int
    private var schoolName: String
    
    init(name: String, age: Int, schoolName: String) {
        self.name = name
        self.age = age
        self.schoolName = schoolName
    }
    
    func printMyData() -> String {
        
    }
    
    func calcEarning() -> Double {
        return 1000.0 // right?
    }
    
    func calcBirthYear(age: Int) -> Int {
        let date = Date()
        let year = Calendar.current.component(.year, from: date)
        return year - age
    }
    
}
