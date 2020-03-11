//
//  Queue.swift
//  Utility
//
//  Created by admin on 11/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
class Nodess
{
    var value:Any
    var next:Nodess?
    init(value:Any)
    {
        self.value = value
    }
}

public class Queues
{
    public var array:[String] = []
    public func enque(_ string:String)
    {
        array.append(string)
    }
    public func deque() -> String
    {
        let length = array.count - 1
        if array.isEmpty == false
        {
            let val :String = array.last!
            array.remove(at : length)
            return val
        }
        return ""
    }
}
