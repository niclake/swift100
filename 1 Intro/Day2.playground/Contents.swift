import Cocoa

//var greeting = "Hello, playground"

//Booleans
let filename = "paris.jpg"
print(filename.hasSuffix(".jpg")) //true

let number = 120
print(number.isMultiple(of: 3)) //true

//Set directly
let goodDogs = true

//Set computed
let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)


var gameOver = false
print(gameOver)
gameOver.toggle()
print(gameOver)


//Join strings
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

//Operator overloadeng - + means different things depending on context
//For int/double, math
//For strings, adding them together
let luggageCode = "1" + "2" + "3" + "4" + "5"
//This is bulky

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

//Bad code
let number = 11
//let missionsMessage = "Apollo " + number + " landed on the moon."

//Awkward code
//let missionMessage = "Apollo + " String(number) + " landed on the moon."

//Interpolation
let missionMessage = "Apollo \(number) landed on the moon."

//You can run calculations inside interpolation
print("5 x 5 is \(5 * 5)")
