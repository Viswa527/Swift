//
//  main.swift
//  BubbleSort
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
print("Enter length of Array : ",terminator:" ")
var numberOfElements = Int(readLine()!)!
var unsortedArray:Array<Int> = []

for _ in 0...numberOfElements-1                         // reading the inputs from the user inserts the values in the Array
{
    let x = Int(readLine()!)!
    unsortedArray.append(x)
}
var sortedArray = Bubble.bubbleSort(unsortedArray)

for i in sortedArray
{
    print(i,terminator:" ")
}

