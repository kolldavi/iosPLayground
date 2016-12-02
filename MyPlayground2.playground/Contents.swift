//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print("David")


let name  = "Dave"
var age = 26

print("I am \(age) " + name)

var d:Double = 5.76
var i:Int = 8

print (Double(i)*d)

var arr = [1,true,3,4,5] as [Any]
print(arr[1])
var dictonary = ["name":"David","comp":"programing tool"]
print(dictonary["name"]!)
print(dictonary.count)
dictonary.removeValue(forKey: "name")

var menu = ["pizza":10.99,"ice cream":4.99,"salad":7.99]

print(menu["pizza"]! + menu["salad"]!)

