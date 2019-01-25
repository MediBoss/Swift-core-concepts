
//: Playground - noun: a place where people can play

/*
        THREE MAIN HIGHER ORDER FUNTIONS
1. Map : using the Map function to perform the same operation to all elements\
2. Filter : Used to filter out the collection based on some requirements
3. FlatMap : Flatens the collection, and gets rid of nil values

NOTE : Before you can use them , make sure you can at least perform those operations logically(wthe regular way)
**/

import Foundation

let testScores: [Int] = [90,78,76,83, 84, 87,10,40,34,94,65,90,55,77,73,98]
print(testScores.map {$0 + 2 })
print(testScores.map {$0 * 2})

        // Maping a Dictionary
let topSchools: Dictionary<String,Int> = ["NJIT" : 23000, "Columbia" : 45000, "Product College": 300, "University of Minnessota" : 13000]

// Increment each University's student body by 10
let newStudentBody = topSchools.map { (collegeName, studentBody) in
    return studentBody + 10
}
print(newStudentBody)
print(testScores.filter { $0 > 80 }) 
print(topSchools.filter { $1 < 500}) 
print(testScores.flatMap { $0 })

                        // Using reduce
//The reduce function allows you to combine all the elements in an array and return an object of any type (generics!!!!)
var strings: [String] = ["Another", "Brick", "In", "The", "Wall"]

// One way
var result = strings.reduce("") { (result, a) -> String in
    return result + String(a)
}

// Another way
var result_two = strings.reduce("", { $0 + String($1)})

print(result)
print(result_two)


            // Chaining Higher Order Functions

let arrayofNumbers = [[1,2,3,4],[5,6,7,8],[12,30,56,90,3,15,60]]
let multiplesOfFiveAndThree = arrayofNumbers.flatMap{$0}.filter{ $0 % 3 == 0 && $0 % 5 == 0}
print(multiplesOfFiveAndThree) // prints [30, 90, 15, 60]
