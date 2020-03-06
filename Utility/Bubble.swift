//
//  Bubble.swift
//  Utility
//
//  Created by admin on 04/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
public class Bubble
{
   public static func bubbleSortOf(_ array:Array<Int>) -> [Int]            // function to bubble sort which returns sorted array
    {
        var arraySort:Array<Int> = array
        let length = arraySort.count
        for _ in 0...length-2
        {
            for j in 0...length-2
            {
                if arraySort[j+1] < arraySort[j]                    //logic for bubble sort
                {
                    let temp = arraySort[j+1]                     // swapping values in Array
                    arraySort[j+1] = arraySort[j]
                    arraySort[j] = temp
                }
            }
        }
        return arraySort
    }
}
