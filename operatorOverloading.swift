/*
    Opeartion overloading in SWIFT
 
 WHY USE IT : It can be used to modify an operator's capacity and computation
 */

import Foundation

infix operator ** // this operator will be used to compute the power of two numbers
//infix operator *+ // this opeartor will be used to compute

/*
    This function will create a new array made of multiplying each item in the two arrays it is provided
 @parameterOne : The first array
 @parameterTwo : The second array
 */
func *(parameterOne: [Int], parameterTwo: [Int]) ->[Int]{
    
    // making sure that both arrays contains the same amount of data
    guard parameterOne.count == parameterTwo.count else { return parameterOne }
    
    var result = [Int]()
    for (index, number) in parameterOne.enumerated() {
        result.append(number * parameterTwo[index])
    }
    
    return result
}

    // this function creates a new operation, **, to simplify the exponentiation of two numbers
func **(firstValue: Int, secondValue: Int) -> Double{
    
    return pow(Double(firstValue), Double(secondValue))
}


let test = [1,2,3] * [4,5,6]
//(2**5) // returns 32
//print(test) // prints [4,10,18]
