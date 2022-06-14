import Cocoa

//Parameter default values
//Old code
func printTimesTables(for number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)

//Set end to have a default value of 12

func printTimesTables2(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables2(for: 5, end: 20)
printTimesTables2(for: 8)

//previously seen default params in action
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
//characters.removeAll()
//print(characters.count)
//can also remove items while keeping existing capacity:
characters.removeAll(keepingCapacity: true)
print(characters.count)


//Handling errors
//Declare errors that CAN happen
//Flag errors IF they happen
//Handle errors WHEN they happen
enum PasswordError: Error {
    case short, obvious
}
//This says 2 possible errors: short and obvious
//Write a function to check password strength, and throw error
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "Ok"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}
//Have to mark as `throws` before the return type
//Function doesn't HAVE to throw errors, but it might/can
//throw the case, which exits the function
//If no errors, function will behave like normal

//To actually do the handling, use a try/catch
//try explicitly acknowledges which parts of our code can cause errors
let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}
//Most errors thrown by Apple provide a meaningful message that you can present to your user if needed. Swift makes this available using an error value that’s automatically provided inside your catch block, and it’s common to read error.localizedDescription to see exactly what happened.
