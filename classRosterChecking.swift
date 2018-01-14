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

var cs300 = [

    094567 : "Ahmad Ahmad",
    087567 : "Medi Assumani",
    898646 : "Macheline Ernestro",
    765489 : "Maceline Ambroise",
    674532 : "Elizabeth Duong",
    645325 : "Terence Jhon",
    786545 : "Michale Beasly",
    765534 : "Ricardo Gonzalez"
]
