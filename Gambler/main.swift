//
//  main.swift
//  Gambler
//
//  Created by admin on 05/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var stack = Double(readLine()!)!
var goal = Double(readLine()!)!
var trails = Double(readLine()!)!
func gambler(_ stack:Double,_ goal:Double,_ trail:Double)
{
    var bet = 0
    let trails:Int = Int(trail)
    var wins:Double = 0.0
    for i in 0..<trails
    {
        var cash = stack;
        while (cash > 0 && cash < goal)
        {
            bet = bet + 1;
            if Bool.random()
            {
                cash=cash+1;
            }
            else
            {
                 cash=cash-1;
            }
        }
        if (cash == goal)
        {
            wins = wins+1;
        }
    }
    print("Number of games won : \(wins) ")
    let p = ((wins / trail)*100)
    let q = 100 - p
    print("percentage of winning : \(p)")
    print("Percentage of lossing : \(q)")
}
gambler(stack, goal, trails)
