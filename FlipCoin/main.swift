//
//  main.swift
//  FlipCoin
//
//  Created by admin on 05/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var Number=Int(readLine()!)!
var tails:Int=0
var heads:Int=0

for _ in 0...Number-1
{
    if Bool.random()
    {
        tails+=1
    }
    else
    {
        heads+=1
    }
}
var percentageOfHead=(Float(heads)*100.0)/Float(Number)
print("Percentage of getting Heads :  \(percentageOfHead)")
print("Percentage of getting Tails :  \(100-percentageOfHead)")
