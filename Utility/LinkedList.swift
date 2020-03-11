//
//  main.swift
//  Utility
//
//  Created by admin on 09/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

public class Node<T: Comparable> {
  var value: T? = nil
  var next: Node? = nil
}

public class LinkedList<T: Comparable> {
    var head = Node<T>()
    var length = 0
    public func insert(value: T)
    {
      
      if self.head.value == nil     //find to see if empty list
      {
        length = length + 1
        self.head.value = value
      }
      else
      {
        var lastNode = self.head        //find the last node without a next value
        while lastNode.next != nil
        {
          lastNode = lastNode.next!
        }
        let newNode = Node<T>()          //once found, create a new node and connect the linked list
        newNode.value = value
        lastNode.next = newNode
        length = length + 1
      }
    }
    public func remove(value: T)        // to remove the elements in List
    {
      
      if self.head.value == value       //Check if the value is at the head
      {
        self.head = self.head.next!
        length = length - 1
      }
    
    if self.head.value != nil           //Traverse the linked list to see if node is in the linked list
    {
        var node = self.head
        var previousNode = Node<T>()
        
        while node.value != value && node.next != nil       //If value found, exit the loop
        {
          previousNode = node
          node = node.next!
        }
        if node.value == value                              //once found, connect the previous node to the current node's next
        {
          if node.next != nil
          {
            previousNode.next = node.next
          }
          else
          {
            previousNode.next = nil
            length = length - 1//if at the end, the next is nil
          }
        }
      }
    }
    public func printAllValues()                             // to print all the elements in the list
    {
      var current: Node! = self.head
      while current != nil && current.value != nil
      {
        print(current.value!,terminator:" ")
        current = current.next
      }
        print()
    }
    public func sort()                                      // sorting the List
    {
        var current: Node! = self.head
        var prev:Node! = current.next
        for i in 0...length - 2
        {
            for _ in i..<length - 1
            {
                if prev.value! < current.value!
                {
                    let temp = current.value
                    current.value = prev.value
                    prev.value = temp
                }
                prev = prev.next
            }
            current = current.next
            prev = current.next
        }
    }
}
