
/*
    Opeartion overloading in SWIFT
 
 WHY USE IT : It can be used to modify an operator's capacity and computation
 */


/*
    This function will create a new array made of multiplying
    each item in the two arrays it is provided
 
 @parameterOne : The first array
 @parameterTwo : The second array
 */
func *(parameterOne: [Int], parameterTwo: [Int]) ->[Int]{
    
    // making sure that both arrays contains the same amount of data
    guard parameterOne.count == parameterTwo.count else {return}
    
    var result = [Int]()
    for (index, number) in parameterOne.enumerated() {
        result.append(number * parameterTwo[index])
    }
    
    return result
}

let test = [1,2,3] * [4,5,6]
print(test) // prints [4,10,18]
