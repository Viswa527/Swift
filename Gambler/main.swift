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
func gambler(_ s:Double,_ g:Double,_ t:Double)
{
    var b = 0
    let tr:Int = Int(t)
    var w:Double = 0.0
    for i in 0..<tr
    {
        var cash = s;
        while (cash > 0 && cash < g)
        {
            b=b+1;
            if Bool.random()
            {
                cash=cash+1;
             //   print(cash)
            }
            else
            {
                 cash=cash-1;
                //print(cash)
            }
        }
        if (cash == g)
        {
            w=w+1;
            print(i)
            break
        }
    }
    print("Number of games won : \(w) ")
    let p = ((w / t)*100)
    let q = 100 - p
    print("percentage of winning : \(p)")
    print("Percentage of lossing : \(q)")
}
gambler(stack, goal, trails)
