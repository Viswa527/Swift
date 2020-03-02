//
//  main.swift
//  Vending Machine
//
//  Created by admin on 02/03/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
var notes = [1000,500,100,50,10,5,2,1]          // by default Notes are defined
var amount = 4965                               // Cash is entered
var i = 0                                       // initialized to iterate through notes
while amount != 0
{
    if amount/notes[i] != 0
    {
        let noNotes = amount/notes[i]           // to show how many notes required to get
        let debited = notes[i]*noNotes          // amount that debits everytime u find notes
        amount = amount-debited                 // amount should be updated every time when u debit the money
        print("\(notes[i]) * \(noNotes) = \(debited)")
    }
    i=i+1
}
