// Declaring a class
class Shape {
   var numberOfSides = 0
   var name: String

   // initializer - initializes the class
   init(name: String) {
       // keyword 'self' is used to indicate the property from the current class
       self.name = name
   }

   // use deinit to create a deinitializer if you need to perform cleanup upon onject deallocation
   deinit {
       //....
   }

   func simpleDescription() -> String {
       return "A shape with \(numberOfSides) sides is a \(self.name)."
   } 
}

// Creating an instance of a class
var shape = Shape(name: "square")
shape.numberOfSides = 4
var shapeDescription = shape.simpleDescription()

print(shapeDescription)

// Subclasses
class Square: Shape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        // 'super' keyword used
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }
    // overrided function
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}



// Notes
// 1. Every property needs a value assigned - either in its declaration or in its initializer
// 2. There is no requirement for classes to sublcass any standard root class, include superclass as needed
// 3. Methods on a subclass that override the superclass's implementation are marked with 'override'
//      a. overriding a method by accident, without 'override' or
//      b. methods with 'override' that don't actually override any method in the superclass are detected by the compiler
//         resulting in an error