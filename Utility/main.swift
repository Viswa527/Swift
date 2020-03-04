//
//  main.swift
//  Utility
//
//  Created by admin on 03/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

// Basic properties of a Tree
class Node
{
    let value:Int
    var leftChild:Node?
    var rightChild:Node?
    init(value:Int,leftChild:Node?,rightChild:Node?)
    {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

// Left Branch
let oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)

// Right Branch
let twentyTwo = Node(value: 22, leftChild: nil, rightChild: nil)
let eleven = Node(value: 11, leftChild: nil, rightChild: nil)
let twentyNode = Node(value: 20, leftChild: eleven, rightChild: twentyTwo)

// Root Node
let tenNode = Node(value: 10, leftChild: fiveNode, rightChild: twentyNode)
