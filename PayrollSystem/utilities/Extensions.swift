//
//  Extensions.swift
//  PayrollSystem
//
//  Created by Daian Aiziatov on 18/09/2018.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

extension Double {
    
    func Formatting() -> String
    {
        let format = NumberFormatter()
        format.currencyCode = "CAD"
        format.numberStyle = .currency
        if let formatValue = format.string(from: self as NSNumber) {
            return "\(formatValue)"
        }
        return "\(self)"
    }
    
    var hours: String
    {
        let format = NumberFormatter()
        format.numberStyle = .decimal
        if let formatValue = format.string(from: self as NSNumber) {
            if self > 1{
                return "\(formatValue) hours"
            } else {
                return "\(formatValue) hour"
            }
        }
        return "\(self)"
    }
}
