func checkRoster(for classDict : Dictionary<Int,String>,for studentId : Int) -> Bool{
      //check if the id is valid
    for id in classDict.keys{
        
        if id == studentId{
            
            return true //if it is valid, return true
        }else{
            
            continue // we iterate until we find if studentId is in the dictionary's key
        }
        
    }
    
    //if it's not valid, return false
    return false
}

var cs300 = [// A dictionary that contais the list of students of a certain class called cs300 : Data Structures
      //The inetegrs represents the student ID and the strings are the student full name


    094567 : "Ahmad Ahmad",
    087567 : "Medi Assumani",
    898646 : "Macheline Ernestro",
    765489 : "Maceline Ambroise",
    674532 : "Elizabeth Duong",
    645325 : "Terence Jhon",
    786545 : "Michale Beasly",
    765534 : "Ricardo Gonzalez"
]

 //  TESTING THE FUNTION


print("Does student \(cs300[674532]!) belongs in CS300- Data Structures : \(checkRoster(for : cs300,for : 674532))")
print("Does student \(cs300[087567]!) belongs in CS300- Data Structures : \(checkRoster(for : cs300,for : 087567))")
print("Does student Melanie Abreu belongs in CS300- Data Structures : \(checkRoster(for : cs300,for : 897687))")
print("Does student \(cs300[765534]!) belongs in CS300- Data Structures : \(checkRoster(for : cs300,for : 674532))")
