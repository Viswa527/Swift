//
//  BalancedParanthesis.swift
//  Utility
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
class Nodes                                     // Node in Stack contains value and next
{
    let value:String
    var next:Nodes?
    init(value:String)
    {
        self.value = value
    }
}
class Stack                                     // Stack properties
{
    public var length:Int = 0                  // to find length it modifies whenever u use pop() and push() operations
    var top:Nodes?
    func push(_ values:String)                  // push() operation add element to stack
    {
        let oldTop = top
        top = Nodes(value: values)
        top?.next = oldTop
        length = length + 1
    }
    func pop(_ values:String)                   // pop() operation delete the element
    {
        _ = top
        top = top?.next
        length = length - 1
    }
    func peek() -> String                       // peek() operation show the top element in stack
    {
        return (top?.value)!
    }
}
public class Balanced
{
    let stack = Stack()
    public func isBalancedParanthesis(_ array1:String) -> Bool          // method to check the string has Balanced paranthesis are not..? and returns True or False
    {
        var array:[String] = []
        for i in array1                                 // takes only(){}[] into array
        {
            if "[{()}]".contains(i)
            {
                array.append(String(i))
            }
        }
        for i in 0..<array.count                        // actual procedure to checking balanced or not
        {
            if "[{(".contains(array[i])
            {
                stack.push(array[i])
            }
            else
            {
                if stack.length != 0 && array[i] == ")" && stack.peek() == "("
                {
                    stack.pop(array[i])
                }
                else
                {
                    if stack.length != 0 && array[i] == "}" && stack.peek() == "{"
                    {
                        stack.pop(array[i])
                    }
                    else
                    {
                        if stack.length != 0 && array[i] == "]" && stack.peek() == "["
                        {
                            stack.pop(array[i])
                        }
                        else
                        {
                            return false
                        }
                    }
                }
            }
        }
        if stack.length == 0
        {
            return true
        }
        else
        {
            return false
        }
    }
}
