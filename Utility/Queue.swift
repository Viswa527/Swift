//
//  Queue.swift
//  Utility
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation


class Node
{
    var value: Any?
    var next: Node?
    init()
    {
    }
    init(value: Any)
    {
        self.value = value
    }
}
class Queue
{
    var head = Node()
    public func enque(_ value:Any)
    {
        if self.head.value == nil
        {
            self.head.value = value
            print("\(value) head is nill")
        }
        else
        {
            var lastNode = self.head
            while  lastNode.next != nil
            {
                lastNode = lastNode.next!
            }
            let newNode = Node()
            newNode.value = value
            lastNode.next = newNode
            print("\(value) head not nill")
        }
    }
    public func deque()
    {
        head = self.head.next!
    }
    public func printQueue()
    {
        var pro: Node! = self.head
        while pro != nil 
        {
            print(pro.value!)
            pro = pro.next
        }
    }
    
}
