
//: Playground - noun: a place where people can play

/*
    1.Convert inches to feet
    2.Convert minutes to hours
    3.Convert seconds to minutes
 
 */
import Foundation



//Function to convert inches to feet
//Postcondition : an integer for feet is returned
func inchesToFeet(for inches: Int) -> Int{
    
    return inches / 12
}
//Function to convert minutes to hours
//Postcondition : an integer for hours is returned
func minutesToHours(for minutes: Int) -> Int{
    
    return minutes / 60
}

//Function to convert seconds to minutes
//Postcondition : an integer for minutes is returned
func secondsToMinutes(for seconds: Int) -> Int{
    
    return seconds / 60
}
//Function to compute conversion using control statements
func userChoice(for input: Int){
    
    if input == 1{
     
        print("\(inches) inches equals to \(inchesToFeet(for: inches)) Feet")
        
    }else if input == 2{
        
        print("\(minutes) minutes equals to \(minutesToHours(for: minutes)) minutes")
        
    }else if input == 3{
        
        print("\(seconds) seconds equals to \(secondsToMinutes(for: seconds)) Minutes")
    }
}
//MAIN


let inches = 248
let minutes = 3476
let seconds = 4390

userChoice(for: 1)
userChoice(for: 2)
userChoice(for: 3)
