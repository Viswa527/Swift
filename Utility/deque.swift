//
//  File.swift
//  Utility
//
//  Created by admin on 13/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
class Nodee
{
    var value:String?
    var next:Nodee?
    init(){}
    init(_ value:String)
    {
        self.value = value
    }
}
class Deque
{
    var head = Nodee()
    var tail:Nodee!
    public func addFront(_ value:String)
    {
        if self.head.value == nil
        {
            tail = head
            self.head.value = value
            self.tail.value = value
        }
        else
        {
            let newNode = Nodee()
            newNode.value = value
            newNode.next =  head
            head = newNode
        }
    }
    public func addRear(_ value:String)
    {
        
        if self.head.value == nil
        {
            tail = head
            self.head.value = value
            self.tail.value = value
        }
        else
        {
            let newNode = Nodee()
            newNode.value = value
            tail.next = newNode
            tail = newNode
        }
    }
    public func removeFront() -> String
    {
        let value = head.value!
        head = head.next!
        return value
    }
    public func removeRear()  -> String
    {
        var pointer = head
        var prev:Nodee?
        while pointer.next != nil
        {
            prev = pointer.next
            pointer = pointer.next!
        }
        let value = tail.value!
        tail = prev
        return value
    }
}
