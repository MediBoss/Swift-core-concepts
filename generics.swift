import UIKit
import Foundation

struct Container<T> {
    var value: T
    var date: Date
}

class Cache<Key: Hashable, T>{
    
    private var values = [Key: Container<T>]()
    
    
    func insert(_ value: T, forKey key: Key) {
        
        let expirationDate = Date().addingTimeInterval(1000)
        
        values[key] = Container(
            value: value,
            date: expirationDate
        )
    }
    
    
    func value(forKey key: Key) -> T? {
        
        guard let container = values[key] else { return nil }
        
        guard container.date > Date() else {
            values[key] = nil
            return nil
        }
        
        return container.value
    }
}
