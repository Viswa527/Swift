//
//  main.swift
//  InsertionSort
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
print("Enter the size of Array : ",terminator:" ")
let length = Int(readLine()!)!
var unsortedArray:Array<Int> = []
for _ in 0...length-1
{
    unsortedArray.append(Int(readLine()!)!)
}                                                       // targeted array to make into sorted Array

var sortedArray = Insertion.insertionSortOf(unsortedArray)

for i in 0...sortedArray.count-1
{
    print(sortedArray[i],terminator:" ")
}
