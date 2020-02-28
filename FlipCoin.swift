import Foundation
var Number=Int(readLine()!)!
var Tails:Int=0
var heads:Int=0
for i in 0...Number-1
{
    if Bool.random()
    {
        Tails+=1
    }
    else
    {
        heads+=1
    }
}
var perHead=(Float(heads)*100.0)/Float(Number)
print(perHead)
var pertail=100-perHead
print(pertail)

