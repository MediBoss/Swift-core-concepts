
/*
                EXERCISE #3
 
 Description : Given the exam grades of two classes : Find the the class that has the highest
 
               Average and the common scores between the two classes
 */

var classOneGrades : [Double] = [89.8,77.4,56.9,90.8,97.7,67.2,64.0,70.7] // the test scores of the first class
var classTwoGrades : [Double] = [78.3,98.5,86.2,79.0,100.0,78.5,56.0,63.9] // the test scores of the second class

            //Function to get Highest average score between the two classes to see wich one did better
func getHighestAverage(for classOne : [Double],for  clasTwo: [Double]) -> Double{
     
    if getAverage(for: classOne) > getAverage(for: clasTwo){
        
        return getAverage(for: classOne)
        
    }else if getAverage(for: clasTwo) > getAverage(for: classOne){
        
        return getAverage(for: clasTwo)
    }else{
        
        return 0.0
    }  
}
        //Funtion to get the average score of an exam (in array)
func getAverage(for anyClass: [Double]) -> Double{
    
    var sum = 0.0
    for score in anyClass{   
        sum = sum + score
    }  
    return sum/Double(anyClass.count)    
}
        //Function to get the coomon grades between two classes'cexam scores

func getCommonScores(for classOne: [Double], for classTwo: [Double]) ->[Double]{
    
   var commonGrades : [Double] = [] 
    for i in 0..<classOne.count{   
        if classOne[i] == classTwo[i]{        
            commonGrades[i] = classOne[i]
        }else{
            continue
        }
    } 
    return commonGrades
}
