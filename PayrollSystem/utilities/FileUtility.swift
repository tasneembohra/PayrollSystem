//
//  FileUtility.swift
//  PayrollSystem
//
//  Created by Tasneem on 11/09/18.
//  Copyright © 2018 Lambton College. All rights reserved.
//

import Foundation

class FileUtility {
    static func printObjectToFile(employee:Employee) {
        let str = "Super long string here"
        let filename = getDocumentsDirectory().appendingPathComponent("employee_output.txt")
        print(filename)
        do {
            try str.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            // failed to write file – bad permissions, bad filename, missing permissions, or more likely it can't be converted to the encoding
        }
    }
    
    static func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
