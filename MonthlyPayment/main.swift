//
//  main.swift
//  MonthlyPayment
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var principal:Double = Double(readLine()!)!                                     // reading the value of Principal
var year:Double = Double(readLine()!)!                                          // reading the value of year
var rate:Double = Double(readLine()!)!                                          // reading the value of rate of interest

func paymentMonthly(_ principal:Double,_ year:Double,_ rate:Double) -> Double   // function to calculate the paymentMonthly
{
    let numberOfmonths:Double = 12 * year
    let ratePerMonth:Double = principal * Double(rate)/(1200)
    let denomi:Double = 1 - pow(Double(1+ratePerMonth),Double(-numberOfmonths))
    let result:Double = ratePerMonth/denomi
    return result                                                                // result will be returned
}
print(paymentMonthly(principal,year,rate))
