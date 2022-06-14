import Cocoa

//Write a function that accepts an integer from 1 to 10,000, and returns the integer square root of that number
//can't use sqrt()
//if input is < 1 or > 10,000, throw an "out of bounds" error
//Only consider integer square roots
//If you can't find the square root, throw a "no root" error

enum squareRootErrors: Error {
    case outOfBounds, noRoot
}

func getSquareRoot(_ number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw squareRootErrors.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    
    throw squareRootErrors.noRoot
}

let numbers = [9, 225, 777, 8100, 15000, 0]

for number in numbers {
    do {
        let result = try getSquareRoot(number)
        print("The square root of \(number) is \(result)!")
    } catch squareRootErrors.outOfBounds {
        print("Number must be between 1 and 10,000")
    } catch squareRootErrors.noRoot {
        print("Could not find the exact square root of \(number).")
    } catch {
        print("There was an error")
    }
}
