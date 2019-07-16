import UIKit
import Foundation

struct Container<T> {
    var value: T
    var date: Date
}


protocol Identifiable {
    associatedtype ID: Equatable & CustomStringConvertible
    var id: ID { get }
}

struct Article: Identifiable {
    
    let id: UUID
    var title: String
    var body: String
}

struct Tag: Identifiable {
    
    let id: Int
    var name: String
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

class ArticleManager {
    
    private var cachedArticles = Cache<Article.id, Article>
}
