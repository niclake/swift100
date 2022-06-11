import Cocoa

//Create an array of strings,
// then print the number of items in the array
// AND the number of UNIQUE items in the array

//Declare the array
let strings = ["One", "Two", "Three", "One"]
//Print count of elements
print(strings.count)
//Cast array to a set, which only allows unique values, then count off that
print(Set(strings).count)
