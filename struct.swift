
//STRUCT ARE LIKE CLASSES, BUT THE MAIN DIFFRENCE IS THAT THEY OF VALUE TYPE, MEANING THEY PASS THE ACTAUL DATA INSTEAD OF ITS ADDRESS
//STRUCTS DO NOT INCLUDE AN INITIALIZER

 //STRUCTS : ARE VALUE TYPE

struct UserAccount{
    
    var firstName : String
    var lastName : String
    var email : String
    var userName : String
    
    func getUserInfo() ->String{
        
        return "First Name : \(self.firstName)\nLast Name : \(self.lastName)\nEmail Address : \(self.email)\nUsername : \(self.userName)"
    }
}

var user1 =  UserAccount(firstName: "Lora", lastName: "Paris", email: "lauraP23@gmail.com",userName: "lparis17\n")
var user2 =  UserAccount(firstName : "Richard", lastName : "Ingram", email : "richardI34@gmail.com", userName: "ringram17")


            //Before
print(user1.getUserInfo())
print("\n")
print(user2.getUserInfo())

    //AFTER
            user1 = user2 // copies each user2's property value into user1's accordingly

print(user1.getUserInfo())
print("\n")
print(user2.getUserInfo())







