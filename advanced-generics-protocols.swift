import Foundation
import UIKit

public enum Size {
    case small, medium, large
}

public enum Color {
    case red, green, blue
}

protocol Specification {
    
    associatedtype T
    
    func isSatisfied(item: T) -> Bool
}

struct ColorSpecification: Specification {
    
    typealias T = Product
    var color: Color
    
    
    func isSatisfied(item: Product) -> Bool {
        return item.color == color
    }
}

struct SizeSpecification: Specification {
    
    typealias T = Product
    var size: Size
    
    func isSatisfied(item: Product) -> Bool {
        return item.size == size
    }
}

struct Product {
    
    var name: String
    var color: Color
    var size: Size
}

extension Product: CustomStringConvertible {
    
    var description: String {
        return "\(color) \(name) of size \(size)"
    }
}
