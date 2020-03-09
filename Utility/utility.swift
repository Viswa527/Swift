//
//  main.swift
//  Utility
//
//  Created by admin on 09/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

public class Node<T: Equatable>
{
  var value: T? = nil
  var next: Node? = nil
}
public class LinkedList<T: Equatable>
{
  var head = Node<T>()
    public func insert(value: T)
    {
      
      if self.head.value == nil     //find to see if empty list
      {
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
      }
    }
    public func remove(value: T)
    {
      
      if self.head.value == value       //Check if the value is at the head
      {
        self.head = self.head.next!
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
            previousNode.next = nil                 //if at the end, the next is nil
          }
        }
      }
    }
    public func printAllKeys()
    {
      var current: Node! = self.head
      while current != nil && current.value != nil
      {
        print(current.value!)
        current = current.next
      }
    }
}
