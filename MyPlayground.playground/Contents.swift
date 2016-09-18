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

#if false //7: Closures
var str = "123"
func changestr() {
    str += "456"
}
changestr()
print(str)
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
names.sort()
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = names.sort(backwards)
reversed = names.sort( { (s1: String, s2: String) -> Bool in return s1 > s2 } )
reversed = names.sort( { s1, s2 in return s1 > s2 } )
reversed = names.sort( { s1, s2 in s1 > s2 } )
reversed = names.sort( { $0 > $1 } )
reversed = names.sort( > )
reversed = names.sort(){$0 > $1}
reversed = names.sort {$0 > $1}
func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}
let incrementByTen = makeIncrementor(forIncrement: 10)
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementor(forIncrement: 7)
incrementBySeven()

var incrementByVar = makeIncrementor(forIncrement: 6)
incrementByVar()
incrementByVar = makeIncrementor(forIncrement: 3)
incrementByVar()
incrementByVar = incrementBySeven
incrementByVar()
incrementByVar()
incrementBySeven()

var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
// prints "5"
let customerProvider = {customersInLine.removeAtIndex(0) }
print(customersInLine.count)
// prints "5"
print("Now serving \(customerProvider())!")
// prints "Now serving Chris!"
print(customersInLine.count)
print(customerProvider)
#endif //7: Closures
#if false //Class  & ARC
struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1 }
}
enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}
class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    static var overrideableComputedTypeProperty: Int {
        return 107
    }
}
print(SomeStructure.storedTypeProperty)
// 输出 "Some value." 
SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)
// 输出 "Another value.” 
print(SomeEnumeration.computedTypeProperty)
// 输出 "6" 
print(SomeClass.computedTypeProperty)
// 输出 "27"
print(SomeClass.overrideableComputedTypeProperty)
struct Size {
    var width = 0.0
    var height: SomeClass
}
let some = SomeClass()
let twoByTwo = Size(width: 2.0, height: some)
print(twoByTwo)
class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheel(s)"
    }
}
class Bicycle: Vehicle {
    init(d: Int) {
        super.init()
        numberOfWheels = d
    }
}
let bicycle = Bicycle(d:8)
print("Bicycle: \(bicycle.description)")
// Bicycle: 2 wheel(s)
class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}
let namedMeat = Food(name: "Bacon")
print(namedMeat.name)
let mysteryMeat = Food()
print(mysteryMeat.name)

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    convenience override init(name: String) {
        self.init(name: name, quantity: 1)
    }
}
let oneMysteryItem = RecipeIngredient()
print(oneMysteryItem.name)
print(oneMysteryItem.quantity)

let oneBacon = RecipeIngredient(name: "Bacon")
print(oneBacon.name)
print(oneBacon.quantity)

let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)
print(sixEggs.name)
print(sixEggs.quantity)
class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?
reference1 = Person(name: "John Appleseed")
Person(name: "John")
reference2 = reference1
reference3 = reference1
reference1 = nil
reference2 = nil
reference3 = nil
#endif //Class & ARC
#if false //Class  & ARC
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}
class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}
let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]
print(library)
var movieCount = 0
var songCount = 0
for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
    print(item,#line)
}
print(movieCount)
print(songCount)

for item in library {
    if let movie = item as? Movie {
        print("Movie: '\(movie.name)', dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: '\(song.name)', by \(song.artist)")
    }
}
let someObjects: [AnyObject] = [
    Movie(name: "2001: A Space Odyssey", director: "Stanley Kubrick"),
    Movie(name: "Moon", director: "Duncan Jones"),
    Movie(name: "Alien", director: "Ridley Scott")
]
for object in someObjects {
    let movie = object as! Movie
    print("Movie: '\(movie.name)', dir. \(movie.director)")
}

var things = [Any]()
things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0))
things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
things.append({ (name: String) -> String in "Hello, \(name)" })

for thing in things {
    switch thing {
    case 0 as Int:
        print("zero as an Int")
    case 0 as Double:
        print("zero as a Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double value of \(someDouble)")
    case is Double:
        print("some other double value that I don't want to print")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let movie as Movie:
        print("a movie called '\(movie.name)', dir. \(movie.director)")
    case let stringConverter as String -> String:
        print(stringConverter("Michael"))
    default:
        print("something else")
    }
}
#endif //Class & ARC
#if false //Nested Types
#endif //Nested Types   
    print("new start")

var count = 2















