import Foundation

enum Gender{
    
    case Male
    case Female
}

class Person{
    
    var fullName : String
    var age : Int
    var isMarried : Bool
    var gender : Gender
    
    init(fullName: String, age : Int, isMarried : Bool, gender : Gender){
        
        self.fullName = fullName
        self.age = age
        self.isMarried = isMarried
        self.gender = gender
        
        
        
    }
    
}



