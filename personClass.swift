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
    
    init(for fullName: String,for age : Int,for isMarried : Bool,for gender : Gender){
        
        self.fullName = fullName
        self.age = age
        self.isMarried = isMarried
        self.gender = gender
        
        
    }
    
}

var humanOne = Person(for : "Medi Assumani",for : 18, for : false, for : Gender.Male) // creates an instance of a Person


