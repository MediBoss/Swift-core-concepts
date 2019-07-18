import Foundation
import UIKit

public enum Size {
    case small, medium, large
}

public enum Color {
    case red, green, blue
}

public enum Price {
    case low, high, outrageous
}

protocol Sized {
    var size: Size { get set }
}

protocol Colored {
    var color: Color { get set }
}

protocol Priced {
    var price: Price { get set }
}

protocol Specification {
    
    associatedtype T
    func isSatisfied(item: T) -> Bool
}

protocol Filter {
    
    associatedtype T
    static func filter<Spec: Specification>(items: [T], specs: Spec) -> [T] where Spec.T == T
}

// Type Of Products
class Product: CustomStringConvertible, Sized, Colored, Priced {
    
    var description: String {
        return "\(color) \(name) of size \(size)"
    }
    
    
    var name: String
    var color: Color
    var size: Size
    var price: Price
    
    init(name: String, color: Color, size: Size, price: Price) {
        self.name = name
        self.color = color
        self.size = size
        self.price = price
    }
}

class GameProduct: Product {
    
}

class CarProduct: Product {
    
}


// Specification For filtering
struct ColorSpecification<T: Colored> : Specification {
    
    var color: Color
    
    
    func isSatisfied(item: T) -> Bool {
        return item.color == color
    }
}

struct SizeSpecification<T: Sized>: Specification {
    
    var size: Size
    
    func isSatisfied(item: T) -> Bool {
        return item.size == size
    }
}

struct PriceSpecification<T: Priced>: Specification {
    
    var price: Price
    
    func isSatisfied(item: T) -> Bool {
        return item.price == price
    }
}

// Generic struct that filters any type of product based on the specification
struct GenericFilter<T>: Filter {

    static func filter<Spec: Specification>(items: [T], specs: Spec) -> [T] where T == Spec.T {
        
        var results = [T]()
        for item in items {
            if specs.isSatisfied(item: item) {
                results.append(item)
            }
        }
        return results
    }
}


let spec = PriceSpecification<Product>(price: .low)

let items: [Product] = [

    CarProduct(name: "BMW", color: .blue, size: .medium, price: .outrageous),
    GameProduct(name: "Toy", color: .red, size: .small, price: .low),
    Product(name: "Dess", color: .green, size: .medium, price: .low),
    Product(name: "Pants", color: .blue, size: .large, price: .high),
    Product(name: "Uniform", color: .green, size: .small, price: .low),
    Product(name: "PS4", color: .blue, size: .large, price: .high),
    Product(name: "Food", color: .green, size: .medium, price: .high),

]

print(GenericFilter.filter(items: items, specs: spec))
