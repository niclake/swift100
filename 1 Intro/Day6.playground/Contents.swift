import Cocoa

//For loops
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for os in platforms {
    print("Swift works great on \(os)")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

//Loops in loops
for i in 1...12 {
    print("The \(i) times table:")

    for j in 1...12 {
        print("  \(j) x \(i) is \(j * i)")
    }

    print()
}

//Ranges
//1...12 is 1 through 12
//1..<12 is 1 through 11, excluding 12
//aka if you're doing 1 to array length

//Can also run off of an empty "variable" if you're not using it
var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

//Why underscores?
//This should throw a warning
let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for name in names {
    print("\(name) is a secret agent")
}
//but if you're not actually going to use `name`
for name in names {//this will throw a "immutable value `name` was never used" warning
    print("[CENSORED] is a secret agent!")
}
//So instead
for _ in names {
    print("[CENSORED] is a secret agent!")
}

//Ranges w/ Arrays
print(names[0])
print(names[1...3]) //dangerous, because if there isn't a value at point 3 it'll error
print(names[1...]) //one-sided range prints to the end
//Ranges explained: https://www.avanderlee.com/swift/ranges-explained/


//While loops
var countdown = 10
while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}
print("Blast off!")

//Create random numbers
let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)
var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}
print("Critial hit!")

//For loops: finite sequences
//While loops: arbitrary duration


//Continue and Break
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
