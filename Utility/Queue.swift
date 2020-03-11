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

public class Queue
{
    public var array:[Any] = []

  public var isEmpty: Bool
  {
    return array.isEmpty
  }

  public var count: Int
  {
    return array.count
  }

  public func enqueue(_ element: Any)
  {
    array.append(element)
  }

  public func dequeue()
  {
    if isEmpty == false
    {
      array.removeFirst()
    }
  }

  public func front() -> Any
  {
    return array.first!
  }
}
