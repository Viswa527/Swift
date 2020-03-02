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

func bubbleSort(_ array:Array<Int>) -> [Int]            // function to bubble sort which returns sorted array
{
    var arrSort:Array<Int> = array
    let len=arrSort.count
    for _ in 0...len-2
    {
        for j in 0...len-2
        {
            if arrSort[j+1] < arrSort[j]                    //logic for bubble sort
            {
                let temp = arrSort[j+1]                     // swapping values in Array
                arrSort[j+1] = arrSort[j]
                arrSort[j] = temp
            }
        }
    }
    return arrSort
}

var sortedArray = bubbleSort(unsortedArray)

for i in sortedArray
{
    print(i,terminator:" ")
}

