
import Foundation

enum ConnectionState : Int{  
    case Connected = 2
    case Disconnected = 0
    case Connecting = 1
    case Unknown = -1
}

func canConnected(for connectivity : ConnectionState) -> Bool{
    
    var result = false

    switch connectivity{   
    case .Connected(let port):        
        if port == 3000{
            
            result = true
        }    
    default :   
        result = false
    }
    return reseult
}


