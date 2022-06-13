import Cocoa

//Functions
print("Welcome to my app!")
print("By default This prints out a conversion")
print("chart from centimeters to inches, but you")
print("can also set a custom range if you want.")

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

//We've already used built in functions like .isMultiple()
let number = 139
if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

//What if we want to redo the times table?
//Also, using parameters
func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

//Returning values from functions
let root = sqrt(169)
print(root)

//To return our own value,
//write arrow -> DataType so we know what's getting sent back
//use return as part of function
func rollDice(size: Int) -> Int {
    (Int.random(in: 1...size))
}
let result = rollDice(size: 6)
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
//    let first = string1.sorted()
//    let second = string2.sorted()
//    return first == second
    //This is unnecessary
    
//    return string1.sorted() == string2.sorted()
    // This is still extra
    
    string1.sorted() == string2.sorted()
}

func pythagoras(a: Double, b: Double) -> Double {
//    let input = a * a + b * b
//    let root = sqrt(input)
//    return root
    
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)

//Use return if there are more than one line in your function, OR if you need to break earlier based on a condition

//Given this:
func greet(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!"
    } else {
        return "Hello, \(name)"
    }
}
//We could NOT remove the return calls here, because it's multiline
//but we could refactor into a ternary
func greet2(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}


//Returning MULTIPLE values from functions
//You could cast to array or dict, but that is extra
//Instead just use a tuple
func getUser() -> (firstName: String, lastName: String) {
//    (firstName: "Taylor", lastName: "Swift")
//    This can be done even easier
    ("Taylor", "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

//You don't have to give the elements a name
func getUser2() -> (String, String) {
    ("Taylor", "Swift")
}
//And you access the elements by index
let user2 = getUser2()
print("Name: \(user2.0) \(user2.1)")

//Since we know a tuple is always going to return things in a certain order
//We don't need to create one holding variable and acces with .firstName or .0
let (fName, lName) = getUser()
print("Name: \(fName) \(lName)")
//and if you don't need all the elements of a tuple
//you can use a _ to ignore it
let (firstN, _) = getUser()
print("Name: \(firstN)")


//Customize parameter labels
func rollDice2(sides: Int, count: Int) -> [Int] {
    var rolls = [Int]()
    
    //roll as many dice as needed
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    return rolls
}
let rolls = rollDice2(sides: 6, count: 4)

//You can have multiple functions all named the same, but with different parameters, and Swift will know which one you want based on what you pass in
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

//Here's an example code
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string: string)
//But the call uses "string: string" which is kinda dumb
//We could name the params better, OR
//if we add a _ before the parameter name, we can remove external parameter label
func isUppercase2(_ string: String) -> Bool {
    string == string.uppercased()
}
let string2 = "HELLO, WORLD"
let result2 = isUppercase2(string)
//Using _ is used a lot with append() or contains()
//This isn't always the best
//Another option is to use two names: one that's INTERNAL and one that's EXTERNAL
func printTimesPables2(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesPables2(for: 5)
//So in the function it's "number"
//But when we call it it's "for:"
//Info on when best to omit param label: https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-omit-a-parameter-label
