//
//  main.swift
//  MergeSort
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
print("Enter the size of array : ",terminator:" ")
var length = Int(readLine()!)!
var unSortedArray:Array<Int> = []
for _ in 0...length-1
{
    unSortedArray.append(Int(readLine()!)!)
}

var sortedArray = Merge.mergeSortOf(unSortedArray)
for i in sortedArray
{
    print(i,terminator:" ")
}
