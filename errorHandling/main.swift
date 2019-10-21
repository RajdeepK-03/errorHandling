//
//  main.swift
//  errorHandling
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation




do
{
    var f1: Faculty = try Faculty(facultyId: 0, facultyName: "Bushair", slary: 500)
    print(f1.facultyName)
    
}
catch facultyError.invalidEmployeeId(let facultyId)
{
    print("Invalid faculty ID:\(facultyId)")

}
catch facultyError.invalidFacultyName(let facultyName)
{
    print("Invalid Faculty Name\(facultyName)")
}
catch facultyError.invalidSalary(let salary)
{
    print("invalid slary\(salary)")
}

