//
//  Queue.swift
//  Utility
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation


class Nod
{
    var name: String?
    var cash: Int?
    var next: Nod?
    init()
    {
    }
    init(name: String,cash: Int)
    {
        self.name = name
    }
}
class Queue
{
    var head = Nod()
    public func enque(_ name:String)
    {
        if self.head.name == nil
        {
            self.head.name = name
        }
        else
        {
            var lastNode = self.head
            while  lastNode.next != nil
            {
                lastNode = lastNode.next!
            }
            let newNode = Nod()
            newNode.name = name
            lastNode.next = newNode
        }
    }
    public func enque(_ name:String,_ cash:Int)
    {
        if self.head.name == nil
        {
            self.head.name = name
            self.head.cash = cash
        }
        else
        {
            var lastNode = self.head
            while  lastNode.next != nil
            {
                lastNode = lastNode.next!
            }
            let newNode = Nod()
            newNode.name = name
            newNode.cash = cash
            lastNode.next = newNode
        }
    }
    public func deques() -> String
    {
        let value = head.name!
        head = self.head.next!
        return value
    }
    public func deque()
    {
        head = self.head.next!
    }
    public func printQueue()
    {
        var pro: Nod! = self.head
        while pro != nil 
        {
            print("\(pro.name!) ---(Cash Left)-->\(pro.cash!)")
            pro = pro.next
        }
    }
    
    public func nearCashier() -> [String: [Int]]
    {
        var person: Nod! = self.head
        var book:[String:[Int]] = [:]
        while person != nil
        {
            var transactions:[Int] = []
            print("-----\(person.name!)------!")
            while true
            {
                var num = 1
                print("Press 1 to withdraw cash  ")
                print("Press 2 to credit the cash  ")
                print("Press 3 to check balance ")
                print("Press any key to exit the Bank ")
                let response = readLine()!
                switch response
                {
                case "1":
                    print("Enter the amount to withdraw  : ",terminator :" ")
                    let amount = Int(readLine()!)!
                    if (person.cash! - amount) > 0
                    {
                        person.cash! = person.cash! - amount
                        transactions.append(amount * -1)
                    }
                    else
                    {
                        print("----Insuffient balance Try Again...!-----")
                    }
                case "2":
                    print("Enter the amount to credit  : ",terminator :" ")
                    let amount = Int(readLine()!)!
                    person.cash! = person.cash! + amount
                    transactions.append(amount * 1)
                case "3":
                    print("\(person.name!) your remaining balance is : \(person.cash!)")
                default:
                    book[(person.name!)] = transactions
                    num = num + 1
                    break;
                }
                if num == 2
                {
                    break
                }
            }
            if person.next != nil
            {
                person = person.next!
            }
            else
            {
                break
            }
            
        }
        return book
    }
    
}
