//: Playground - noun: a place where people can play

import UIKit

#if false //1st:The Basics
var strV = "Hello, playground"
print(strV)
NSLog("call %@",#file)
NSLog("call %@",#function)
NSLog("call %d",#line)
NSLog("call %@",NSThread.callStackSymbols())
let strL: String = "Hello,world"
print(strL)
strV = strL
//strL = "an"
print("The value of str is \(strV)")
print(Int.max)
print(Int32.max)
print(Int64.max)
strV = "64 bit"
print("My computer is \(strV)")
let tempInt = 3888
let tempInt8: Int8 = 6
let temp = tempInt + Int(tempInt8)
let http404Error = (404, "Not Found")
print(http404Error.0,http404Error.1)
print(http404Error.1)
print(http404Error)
print(http404Error, possibleNumber,separator: "^", terminator: "")
let possibleNumber: String? = "123"
print(possibleNumber)
print(possibleNumber!)
var possibleNumber2: String? = "456"
print(possibleNumber2)
if let actualNumer = possibleNumber {
    print(actualNumer,#line)
}
print(possibleNumber == nil)

if (possibleNumber2 != nil) {
    print(#line)
}
let age = 3
assert(age >= 0, "less")
#endif //1st:The Basics

//#if false //2nd:Basic Operators
let a = 0
//#endif //2nd:Basic Operators




























