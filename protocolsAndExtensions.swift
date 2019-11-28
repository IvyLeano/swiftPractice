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
 print(aDescription)

 // struct example
 struct SimpleStructure: ExampleProtocol {
     var simpleDescription: String = "A simple structure"
     mutating func adjust() {
         simpleDescription += " (adjusted)"
     }
 }
 var b = SimpleStructure()
 b.adjust()
 let bDescription = b.simpleDescription
 print(bDescription)

 extension Int: ExampleProtocol {
     var simpleDescription: String {
         return "The number \(self)"
     }
     mutating func adjust(){
         self += 42
     }
 }
 print(7.simpleDescription)

 // Notes:
 // 1. 'mutating' marks a method that modifies the structure  
 // 2. use 'extension' to add functionality to an existing type (new methods, computed properties)

// Run
// A very simple class. Now 100% adjusted.
// A simple structure (adjusted)
// The number 7