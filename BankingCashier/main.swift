//
//  main.swift
//  BankingCashier
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

var numberOfPeople = 3
class Person
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
    dic[i] = Person(name: names, cash: cashs)
}

let obj = Queue()
for i in 0..<dic.count
{
    obj.enque((dic[i]!).name)
}
obj.printQueue()
obj.deque()
obj.printQueue()
obj.deque()
obj.printQueue()
