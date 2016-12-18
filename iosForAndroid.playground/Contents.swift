//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"

//print (str)

// tuples

let playerT:(Int ,Int ,Int) = (1,2,3)


print (playerT.0)


//optional

var testInt:Int = 10;
var testDouble:Double = 10.9;


testInt = Int(testDouble)


print (testInt)


var testOptional:String? = "Hi!"
var testOptional2:Int? = 10


print(testOptional2!)

if testOptional == nil{
    
    print(testOptional)
}


if let tempData  = testOptional {
   print (tempData)
}



// array 
//sets 
// Dictionaries


var arr:Array<Int> = [1,2,3]

arr.append(23)

var newArr = [Int]()
newArr.append(12)



//set
var letters = Set<String>()

letters.insert("A")
letters.insert("B")
letters.insert("C")
letters.insert("D")


//Dictionary


var airport = Dictionary<String,String>()

var airport2 : [String:String]

airport2 = ["aaa":"aaa details","bbb":"bbb details"]

airport2["ccc"] = "ccc details"


//function



func sayHello(personName:String ,alreadyGreet :Bool ) ->String{
    
    if alreadyGreet
    {
        return "say hello"
    }
    
    let greet = "hello \(personName)"
    return greet
    
}



sayHello(personName: "mehedee", alreadyGreet: false)






//control flow

for i in 1...5
{
     print (i)
}


















