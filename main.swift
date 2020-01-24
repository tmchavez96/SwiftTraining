//
//  main.swift
//  LanguageConversion
//
//  Created by Taylor Chavez on 1/23/20.
//  Copyright © 2020 Taylor Chavez. All rights reserved.
//

import Foundation

print("Hello, World!")


//MARK: converting python to swift

//MARK: Arrays

//arr = [1,2,3]
//arr.append(4)
//for elm in arr:
//    print("elm is " + str(elm))
//print("first via subscript is " + str(arr[0])


var arr = [1,2,3];
arr.append(4);
for elm in arr{
    print("cur elm is \(elm)")
}
print("first via subscript is \(arr[0])")

//MARK: Sets

//set = {0,0,0}
//print(0 in set)

var myset:Set<Int> = [1,1,1]
print(myset)
var check = myset.contains(0)
print("set check was \(check)")


//MARK: primitives
//myInt = 0
//myStr = "Hello Kodi"
//myBool = True

let myInt:Int = 0;
let myStr:String = "Hello Kodi"
let myBool:Bool = true


//MARK: dictionaries

//dict = {"one":1,"two":2}
//for key,val in dict:
//  print("key was " + key + " val was " + str(val))
//print("val of key one is " + str(dict["one"])

var dict = ["one":1,"two":2]
for (k, v) in dict{
    print("key is \(k) val is \(v)")
}
var optVal = dict["one"]!
print("val of key one is \(optVal)")


//MARK: funcions

//def simpleFunc(input):
//  if(input > 0):
//       return 1
//  else
//      return 0

func simpleFunct(input:Int)-> Int {
    if(input > 0){
        return 1
    }else{
        return 0
    }
}

//MARK: Objects

//class Dog:
//    def __init__(self,name,breed):
//      self.name = name
//      self.breed = breed
//myDog = Dog("scooby","doo")

// #closest thing to struct in python is tuples

// myCat = ("kitty",12)

class Dog{
    var name:String;
    var breed:String;
    init(name:String,breed:String){
        self.name = name
        self.breed = breed
    }
}
var myDog = Dog(name:"scooby",breed:"doo")
print("myDog name - \(myDog.name) breed - \(myDog.breed)")

struct Cat{
    var name:String;
    var age:Int;
}

var myCat = Cat(name: "mr. sprinles", age: 3)
print(myCat)


//MARK: protocols
//python doesn't have interfaces, just inherits classes

//class Animal:
//  self.name
//  growl(self.name + " is growling!")

protocol Animal{
    var name:String {get set}
    func growl()
}

extension Animal{
    func growl(){
        print("\(self.name) is growling")
    }
}

class Dog2 : Animal{
    var name:String;
    var breed:String;
    init(name:String,breed:String){
        self.name = name
        self.breed = breed
    }
}
var myDog2 = Dog2(name:"scooby",breed:"doo")
myDog2.growl()


//MARK: Enums

//python has no need for enums -- array elements can be of any type

//associated values
enum Zoo{
    case dog(Dog)
    case cat(Cat)
}

var zooArr:[Zoo] = []

var d1 = Dog(name:"d1",breed:"pug")
var d2 = Dog(name:"d2",breed:"beagle")
var c1 = Cat(name:"c1",age:4)
var c2 = Cat(name:"c2",age:5)

zooArr.append(.dog(d1))
zooArr.append(.dog(d2))
zooArr.append(.cat(c1))
zooArr.append(.cat(c2))

for elm in zooArr{
    switch elm{
    case .cat:
        print("zoo animal was cat")
    case .dog:
        print("zoo animal was dog")
    }
}

//raw vales

enum binary:Int{
    case zero = 0
    case one = 1
}

var bin0 = binary.zero;
var bin1 = binary.one;

print("bin0 = \(bin0.rawValue)")

//MARK: mutable vs unmutable

//python list are mutable, strings are not

//myStr = ['H','E','L','L','O']
//mtStr="Hello"

//swift is straightforward as var vs let
var mut = "hello"
let immut = "hello"


//MARK: explicit declarations

//python has no type declarations

var myChar:Character = "a"
var myExplicitInt:Int = 420

//MARK: optionals


//myVar = Null
//nextVar
//if(myVar == Null):
//  nextVar = 0
//else:
//  nextVar = myVar

var myOptional:String? = "optional"
var myEmptyOptional:String?


var forcedUnwrap = myOptional!
print("forced unwrapped was \(forcedUnwrap)")

var coalscedUnwrap = myEmptyOptional ?? "crashAverted"
print("coalasced was \(coalscedUnwrap)")

if let safeWrap = myOptional{
    print("safely unwrapped \(safeWrap)")
}

func guardWrap(input:String?){
    guard let unwrapped = input else {
        print("input failed guard")
        return
    }
    print("\(unwrapped) passed guard")
}

guardWrap(input:myOptional)
guardWrap(input:myEmptyOptional)

class Chain{
    var name:String
    var type:String
    init(name:String,type:String){
        self.name = name;
        self.type = type;
    }
}

let myChain:Dog? = Dog(name:"ronald",breed:"german shep")
let unChained = myChain?.name
//the pulled result is still a i
print(unChained)

var implicitWrap:String! = "why would you ever?"


//MARK: if else

//flag = true
//if flag:
//  print("hello")
//else:
//  print("bye")

//is_nice = True
//state = "nice" if is_nice else "not nice"


var myFlag = true
var myResult:Bool?

if(myFlag){
    myResult = true;
}else{
    myResult = false;
}
print("if else  - \(myResult)")


myResult = !myFlag ? true : false

print("ternary  -  \(myResult)")
