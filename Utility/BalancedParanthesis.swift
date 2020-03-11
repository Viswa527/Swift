//
//  BalancedParanthesis.swift
//  Utility
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
class Nodes
{
    let value:String
    var next:Nodes?
    init(value:String)
    {
        self.value = value
    }
}
class Stack
{
    public var length:Int = 0
    var top:Nodes?
    func push(_ values:String)
    {
        let oldTop = top
        top = Nodes(value: values)
        top?.next = oldTop
        length = length + 1
    }
    func pop(_ values:String)
    {
        _ = top
        top = top?.next
        length = length - 1
    }
    func peek() -> String
    {
        return (top?.value)!
    }
}
public class Balanced
{
    let stack = Stack()
    public func isBalancedParanthesis(_ array1:String) -> Bool
    {
        var array:[String] = []
        for i in array1
        {
            if "[{()}]".contains(i)
            {
                array.append(String(i))
            }
        }
        for i in 0..<array.count
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
