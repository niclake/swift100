import Cocoa

var greeting = "Hello, playground"

//Variables and Constants
var name = "Nic"
name = "Becca"
name = "Bearcat"

let character = "Pixel"
//character = "Test" - can't do this

var playerName = "Roy"
print(playerName)

playerName = "Dan1"
print(playerName)

playerName = "Sam"
print(playerName)


//Strings
let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

let quote = "\"That's what she said.\" - Michael Scott"

//let movie = "A day in
//the life of an
//Apple engineer"

let movie = """
A day in
the life of an
Apple engineer
"""

//length of a string is .count
print(actor.count)
//or
let nameLength = actor.count
print(nameLength)

//uppercaseD(), not uppercase()
print(result.uppercased())

//Does a string start with ___?
print(movie.hasPrefix("A day"))
//or end with ___?
print(filename.hasSuffix(".jpg"))
//Note: these are case sensitive - .JPG would be false


//Integers
let score = 10
//let reallyBig = 100000000 - you can do it like this, OR
let reallyBig = 100_000_000 //underscores aren't read but help for visual
// you could even do 1_00__00______00________00 and it wouldn't care

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

var counter = 10
//counter = counter + 5
counter += 5
print(counter)
counter *= 2
print(counter)
counter -= 2
print(counter)
counter /= 2
print(counter)

//Check for is multiple of/remainder - note the weird syntax
let number = 120
print(number.isMultiple(of: 3))


//Decimals & Doubles
//This will not work! result will be 0.30000000000000004
let newNumber = 0.1 + 0.2
print(newNumber)

let a = 1
let b = 2.0
//let c = a + b -- this line throws an error
let c = a + Int(b)
let d = Double(a) + b

// Int or Double is determined by whether a decimal point is present upon assignment
let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

// Type safety prevents reassignment
// This will not work
//var myName = "Nic Lake"
//myName = 13
