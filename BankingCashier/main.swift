//
//  main.swift
//  BankingCashier
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var intialCash = Int(readLine()!)!      //  inital cash
var array:[Int] = [intialCash]
loopToEnd:while intialCash > 0
{
    print("Press 1 to debit from your account  ")
    print("Press 2 to credit from your account   ")
    print("Press Any key to stop all ur activities ")
    let input = readLine()!
    switch input
    {
    case "1":
        print("Enter amount to Debit  : ",terminator:" ")
        let amount = Int(readLine()!)!
        if intialCash - amount > 0
        {
            intialCash = intialCash - amount
            array.append(amount * (-1))
        }
        else
        {
            print("Insufficient balance")
            break
        }
        // Queue.dequeue()
    case "2":
        print("Enter amount to Credit  : ",terminator:" ")
        let amount = Int(readLine()!)!
        intialCash = intialCash + amount
        array.append(amount)
        // Queue.enqueue(amount)
        
    default:
        print("All transcations are ended because of Invalid input")
        break loopToEnd;
    }
}
print(array)
print(intialCash)
