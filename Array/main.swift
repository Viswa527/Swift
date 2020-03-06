//
//  main.swift
//  Fucntionsl
//
//  Created by admin on 05/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var row = Int(readLine()!)!
var column = Int(readLine()!)!
var array:[[Int]] = []
for _ in 0...row-1
{
    var temp:[Int] = []
    for _ in 0...column-1
    {
        temp.append(Int(readLine()!)!)
    }
    array.append(temp)
}
for i in 0...row-1
{
    for j in 0...column-1
    {
        print(array[i][j],terminator:" ")
    }
    print()
}
