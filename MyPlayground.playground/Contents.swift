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
//print(http404Error, possibleNumber,separator: "^", terminator: "")
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
var aStr: String? = nil
print(aStr ?? "eee")
#endif //1st:The Basics

#if false //2nd:Basic Operators and 3:Strings and Characters
let a = 0
for var b in 1...5 {
    print("\(b) * 3 = \(b * 3)")
}
for var c in 1..<5 {
    print("\(c) * 3 = \(c * 3)")
}
let c = false
var d = true
if !c {
    print(c)
}
if c || d {
    print(c)
}
var str = "123"
func changestr( a: String) {
    //a += "456"
}
changestr(str)
print(str)
for chan in str.characters {
    print(chan)
}
let catC: [Character] = ["C","a","t","!"]
let catS = String(catC)
print(catC)
print(catS)
for c in catC {
    print(c)
}
for c in catS.characters {
    print(c)
}
#endif //2nd:Basic Operators and 3:Strings and Characters

#if false //4:Collection Types and 5:Control Flow 6:function
var shopingList = ["ap","ba","or"]
shopingList[2] = "kk"
shopingList.insert("ww", atIndex: 3)
shopingList.removeAtIndex(0)
shopingList
print(shopingList)
var favor: Set = ["Rock","classical","Hip","Hip"]
favor
print(favor)
for var i in 1...5 {
    i += 1
    print(i)
}
for var index = 0; index < 4; ++index {
    //index += 1
    print(index)
}
var a = 1
repeat {
    print(a)
    a += 1
} while a < 10
// prints "Hello Bill and Ted!"
func sayHello(person: String,_ anotherPerson: String) -> String{
    return "Hello \(person) and \(anotherPerson)"
}
print(sayHello("Bill", "Ted"))
func arithmeticMean(a: Double, numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, numbers: 2, 3, 4, 5)

var str = "123"
func changestr(inout a: String) {
    a += "456"
}
changestr(&str)
print(str)
var tempfuntion: (inout String) -> Void = changestr
tempfuntion(&str)
tempfuntion(&str)
let temfun2 = changestr
temfun2(&str)
print(temfun2)
func aFun(a: Int){
    print("aFun")
}
func bFun(a: Int){
    print("bFun")
}
var avarFun = aFun
avarFun(2)
print(avarFun)
func chang(inout f: (Int) -> ()) {
    f = bFun
}
chang(&avarFun)
print(avarFun)
avarFun(2)
func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    var kk = 5
    print(kk)
    func stepForward(input: Int) -> Int { kk += 1;return input + 3 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    print(stepForward(kk))
    print(kk)
    return backwards ? stepBackward : stepForward
}
chooseStepFunction(true)
#endif //4:Collection Types and 5:Control Flow 6: Function






