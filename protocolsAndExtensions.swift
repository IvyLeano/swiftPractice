// 'protocol' keyword is used to declare a protocol
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

// classes, emumerations and structs can all use protocols
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
 }