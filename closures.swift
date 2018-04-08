import UIKit
import Foundation

func sumWithClosure(from : Int, to: Int, closure: (Int) -> (Int)) -> (Int){
    var sum = 0
    for num in from...to{
        sum += closure(num)
    }
    return sum
}

func sumWithFunction(from: Int, to: Int, timesTenFunction: (Int) -> Int) -> Int{
    var sum = 0
    for num in from...to{
        sum += timesTenFunction(num)
    }
    return sum
}

var timesTenClosure: (Int) -> Int = { $0 * 10}//closure that takes an int and returns an int
func timesTenFunction(number: Int) -> Int{return number * 10} //  function that takes an int and returns the int multiply by ten

sumWithFunction(from: 0, to: 10) { (number) in
    return number * 10
}

