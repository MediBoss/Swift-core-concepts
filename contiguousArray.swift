// Should be used when array's element are of a class type (e.g : not array of int, or string)
// if element of array is of type struct or enum, same perfomance with Array
// it is more efficinat when scalability and performance is the most important


let list = ContiguousArray<Int>(1...100)

for i in list{
    print(i)
}
