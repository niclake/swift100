import Cocoa

//Arrays
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])

//Append to an array
beatles.append("Adrian")
//You an append the same thing multiple times by default
beatles.append("Adrian")
beatles.append("Allen")
//but you can't mix up data types
//temperatures.append("Chris") -- this will fail

let firstBeatle = beatles[0]
let firstNumber = numbers[0]
//let notAllowed = firstBeatle + firstNumber

//Declare empty arrays
var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1]) //this will print 80

//Array creation shortcut
var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

//count/length of array
print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

//remove at a specific index
characters.remove(at: 2)
print(characters)
print(characters.count)

characters.removeAll()
print(characters.count)

//Check if an array contains a value
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

//Sort array
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

//Reverse the order of an array
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reveresedPresidents = presidents.reversed()
print(reveresedPresidents)


//Dictionaries
//Employee array
var employee = ["Taylor Swift", "Singer", "Nashville"]
print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")
//This obviously sucks

let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

//These are all flagged as Optional("string")
print(employee2["name"])
print(employee2["job"])
print(employee2["location"])

//Pass default values in with your call out
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

//Other data can be assigned as keys or values
let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

//Can also create and assign
//Note that we declare data types for key and value
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

//Can rewrite values
var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
//Oh no Joker is dead, time to update
archEnemies["Batman"] = "Penguin"

//Can also run .count and .removeAll() against dictionaries


//Sets for Fast Data Lookup
let people = Set(["Denzel Washington", "Tom Cruise", "Nicholas Cage", "Samuel L. Jackson"])
print(people)
//Sets do not care about order, so you might see it print out in a different order than declared

//Adding values to a Set requires an .insert() instead of .append()
var people2 = Set<String>()
people2.insert("Denzel Washington")
people2.insert("Tom Cruise")
people2.insert("Nicholas Cage")
people2.insert("Samuel L. Jackson")
print(people2)

//Sets differ from Arrays:
// - no fixed order - storage is optimized (can always run sorted() on it)
// - no duplicates


//Enums
//You can set a variable and update it later
var selected = "Monday"
selected = "Tuesday"
//but this is dumb

//create a Weekday enum, with cases to handle each day
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday

//can simplify creation
enum myDays {
    case monday, tuesday, wednesday, thursday, friday
}

//Once you set a variable to an instance of an enum, you don't need to declare the enum to set it again
var day2 = myDays.monday
day2 = .tuesday
