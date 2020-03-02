//
//  main.swift
//  MonthlyPayment
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var principal:Double = Double(readLine()!)!
var year:Double = Double(readLine()!)!
var rate:Double = Double(readLine()!)!

func paymentMonthly(_ principal:Double,_ year:Double,_ rate:Double) -> Double
{
    let n:Double = 12 * year
    let r:Double = principal * Double(rate)/(1200)
    let denomi:Double = 1 - pow(Double(1+r),Double(-n))
    let result:Double = r/denomi
    return result
}
print(paymentMonthly(principal,year,rate))
