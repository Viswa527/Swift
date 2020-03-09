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
      //Check if the value is at the head
      if self.head.value == value
      {
        self.head = self.head.next!
      }
    //Traverse the linked list to see if node is in the linked list
    if self.head.value != nil
    {
        var node = self.head
        var previousNode = Node<T>()
        //If value found, exit the loop
        while node.value != value && node.next != nil
        {
          previousNode = node
          node = node.next!
        }
        //once found, connect the previous node to the current node's next
        if node.value == value
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
