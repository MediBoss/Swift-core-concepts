
//: Playground - noun: a place where people can play

import Foundation

/*
    NOTES
 
 1. All errors you want to throw must be an enum that conforms to the Error protocol
 2. The "rethrows" keyword can be used when function to be passed can/cant throw error so you wont have to use try/catch over and over gain
 */
extension String: Error{} // to throw string types

enum PasswordError: Error{
    
    case empty
    case short
    case doesNotMeetRequirements
    case long
    case obvious(message: String)
}


// In order to use this function, use do, catch, try block
func encryptPassword(_ str: String, with password: String) throws -> String{
    
    let encryptedPassword = password + "XYZ" + str
    return String(encryptedPassword.reversed())
}

func authenticateByFaceID(_ user: String) -> Bool{
    // some complex face scanning algorithms
    return true
}


func authenticateByPasscode(_ user: String) throws -> Bool{
    // some password matching algoritms
    throw "some error"
}

    // This function can have a method that throws and does not throw an error
func authenticateUser(with closure: (String) throws -> String ) rethrows{
    
    try closure("MediBoss")
    print("success")
}

        // TESTING CODE
func testCatch() {
    do{
        let encryptedPW = try encryptPassword("coco", with: "mediboss1234")
        print(encryptedPW)
    }catch PasswordError.empty{
        // PW is empty
    } catch PasswordError.doesNotMeetRequirements{
        // PW does not meet reqts
    }catch PasswordError.short{
        // PW is too short
    }catch PasswordError.obvious(let message){
        print("Your password is too obvious66")
    }catch{
        print("Error")
    }
}

testCatch()
