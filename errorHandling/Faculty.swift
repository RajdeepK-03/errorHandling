//
//  Faculty.swift
//  errorHandling
//
//  Created by MacStudent on 2019-10-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
enum facultyError:Error{
    case invalidSalary(salary:Double)
      case   invalidEmployeeId(facultyId:Int)
    case invalidFacultyName(facultyName:String)
    case invalidSalaryWithMessage(salary:Double)
}


class Faculty{
    
    var fucultyId:Int
    var facultyName:String
    var salary:Double
    init(facultyId:Int,facultyName:String,slary:Double)throws{
        
    
    
        if facultyId <= 0
        {
            throw facultyError.invalidEmployeeId(facultyId: facultyId)
        }
        self.fucultyId = facultyId
        
        if facultyName.count < 10
        {
            throw facultyError.invalidFacultyName(facultyName: facultyName)
        }
        
        self.facultyName = facultyName
        
        if salary < 1000
        {
            throw facultyError.invalidSalary(salary: salary)
        }
        self.salary = salary
        
        func setSalary(salary: Double) throws
        {
            if salary < 1000
            {
                throw facultyError.invalidSalaryWithMessage(salary: salary)
                
            }
        }
    }
    
}
