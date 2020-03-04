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
   public static func bubbleSort(_ array:Array<Int>) -> [Int]            // function to bubble sort which returns sorted array
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
}
