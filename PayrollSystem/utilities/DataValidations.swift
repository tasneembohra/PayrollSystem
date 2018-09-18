//
//  Error.swift
//  PayrollSystem
//
//  Created by MacStudent on 2018-09-18.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

enum DataValidationError: Error {
    case invalidName(userName:String?, charRequired: Int)
    case ageInvalid(userName:String, minimumAge: Int)
    case invalidDouble(userName: String, fieldName: String)
    case employmentDetails(userName: String)
    case emailValidation(value: String)
}

/// Validate email string
///
/// - parameter email: A String that rappresent an email address
///
/// - returns: A Boolean value indicating whether an email is valid.
func isEmailValid(_ email: String) throws -> Bool {
    let regex = try NSRegularExpression(pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}", options: .caseInsensitive)
    let flag = regex.firstMatch(in: email, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, email.count)) != nil
    if !flag {
        throw DataValidationError.emailValidation(value: email)
    }
    return flag
}
