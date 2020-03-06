//
//  main.swift
//  sumOfThreeZero
//
//  Created by admin on 05/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var array = [1,2,3,0,-1,-2,-3,-4]
var length = array.count
for i in 0..<length
{
    for j in 0..<length-2
    {
        for k in 0..<length-1
        {
            if array[i] != array[j] && array[j] != array[k] && array[i] != array[k] 
            {
                if array[i]+array[j]+array[k] == 0
                {
                    print("\(array[i]) ,\(array[j]),\(array[k])")
                }
            }
        }
    }
}
