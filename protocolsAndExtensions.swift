// 'protocol' keyword is used to declare a protocol
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

// classes, emumerations and structs can all use protocols
// class example
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
 }

 var a = SimpleClass()
 a.adjust()
 let aDescription = a.simpleDescription

 // struct example
 struct SimpleStructure: ExampleProtocol {
     var simpleDescription: String = "A simple structure"
     mutating func adjust() {
         simpleDescription += " (adjusted)"
     }
 }