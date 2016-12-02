//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var optionalString: String? = "Hello"

print(optionalString==nil)

var optionalName: String? = "David Koller"
print("My name is \(optionalName!)")
var greeting  = "Hello!"

if let name = optionalName
{
    greeting = "Hello,  \(name)"
}


var shoppingList = ["eggs", "water", "fish", "bread"]
shoppingList[1] = "soup"

var ocupations  = ["Malcome": "Captain","Kaylee": "Mechanic",]

ocupations["Jayne"] = "Public Relations"
ocupations.description

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
//For-in Loop

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var seq = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            seq = kind
        }
    }
}
print(seq)
print(largest)

//While Loops
var n = 2
while n < 100 {
    n = n * 2
}
print(n)

var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)

//Arrays

var someInt = [Int]()

print("someInts \(someInt)")
someInt.append(2) //adds elements to array
someInt.append(3)
someInt = [] //remove elements from someInt[]

var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]

var shoppingLists: [String] = ["Eggs", "Milk"]
// shoppingList has been initialized with two initial items
shoppingLists += ["Chocolate Spread", "Cheese", "Butter"]

shoppingLists.insert("Maple Syrup", atIndex: 0)
// "Maple Syrup" is now the first item in the list
//shoppingLists[4...5] = ["Bananas", "Apples"]
for item in shoppingLists{
    print(item)
}
for (index, value) in shoppingLists.enumerate() {
    print("Item \(index + 1): \(value)")
}
/* Sets
 A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items is not important, or when you need to ensure that an item only appears once.*/


