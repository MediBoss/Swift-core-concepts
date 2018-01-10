
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
