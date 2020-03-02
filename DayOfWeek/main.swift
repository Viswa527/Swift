//
//  main.swift
//  DayOfWeek
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var name=["Sunday","Monday","Tuesday","Wenesday","Thursday","Friday","Saturday"]
var day =  2
var month = 3
var year = 2020
day = (day+((year-(14-month)/12)+((year-(14-month)/12)/4)+((year-(14-month)/12)/400)-((year-(14-month)/12)/100))+(31*(month + 12 * ((14-month)/12) - 2))/12) % 7
print(name[day])
