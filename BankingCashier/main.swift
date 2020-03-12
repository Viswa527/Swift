//
//  main.swift
//  BankingCashier
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
print("Enter the number of People")
var numberOfPeople = Int(readLine()!)!              // Number person near bank
class Person                                        // stores name and cash details of a person
{
    public var name:String
    public var cash:Int
    init(name:String,cash:Int)
    {
        self.name = name
        self.cash = cash
    }
}
var dic:[Int:Person] = [:]
for i in 0..<numberOfPeople
{
    print("Enter person name : ",terminator:" ")
    let names = readLine()!
    print("Enter intial cash : ",terminator:" ")
    let cashs = Int(readLine()!)!
    dic[i] = Person(name: names, cash: cashs)       // passing the values
}

let obj = Queue()
for i in 0..<dic.count
{
    obj.enque((dic[i]!).name,(dic[i]!).cash)        // adding the elements into queue
}
obj.printQueue()                                    // printing the order of queue
let record = obj.nearCashier()                      // all the transction records of every person
print(record)
obj.printQueue()                                    // shows the balance
