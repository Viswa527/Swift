//
//  main.swift
//  MergeSort
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var unSortedArray = [6,8,3,12,5,14,2,44,1,9,4,7,0]

func mergeSort(_ array:Array<Int>) -> [Int]
{
  if array.count > 1
    {
        let halfLen = array.count / 2
        let leftArr = mergeSort(Array(array[0 ..< halfLen]))
        let rightArr = mergeSort(Array(array[halfLen ..< array.count]))
        return merge(leftArr, rightArr)
        
  }
    else
    {
    return array
    
    }
}

func merge(_ left:Array<Int>, _ right:Array<Int>) -> [Int]
{
  var leftIndex = 0
  var rightIndex = 0

  var orderedArray:Array<Int>=[]
  while leftIndex < left.count && rightIndex < right.count
  {
    let leftElement = left[leftIndex]
    let rightElement = right[rightIndex]
    if leftElement < rightElement
    {
      orderedArray.append(leftElement)
      leftIndex += 1
    }
    else
    {
        if leftElement > rightElement
        {
            orderedArray.append(rightElement)
            rightIndex += 1
        }
        else
        {
            orderedArray.append(leftElement)
            leftIndex += 1
            orderedArray.append(rightElement)
            rightIndex += 1
        }
    }
}

  while leftIndex < left.count
  {
    orderedArray.append(left[leftIndex])
    leftIndex += 1
  }

  while rightIndex < right.count
  {
    orderedArray.append(right[rightIndex])
    rightIndex += 1
  }
  
  return orderedArray
}

var sortedArray = mergeSort(unSortedArray)
for i in sortedArray
{
    print(i,terminator:" ")
}
