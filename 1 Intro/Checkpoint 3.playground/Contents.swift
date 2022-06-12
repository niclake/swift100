import Cocoa

//Fizz Buzz
//mult of 3 = Fizz, mult of 5 = Buzz

for i in 1...100 {
    var string = ""
    if i.isMultiple(of: 3) {
        string.append("Fizz")
    }
    if i.isMultiple(of: 5) {
        string.append("Buzz")
    }
    
    if string.count > 0 {
        print(string)
    } else {
        print(i)
    }
}
