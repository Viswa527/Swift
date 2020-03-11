//
//  main.swift
//  Prime
//
//  Created by admin on 09/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

let number = 1000
var array:[[Int]] = []
let numberOfInnerList:Int = number % 100
for i in 1...10
{
    let k = (i-1) * 100
    var newList:[Int] = []
    for j in k...i*100
    {
        if Prime.isPrime(j)
        {
            newList.append(j)
        }
    }
    array.append(newList)
}
print(array)
