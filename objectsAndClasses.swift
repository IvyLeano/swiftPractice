// Declaring a class
class Shape {
   var numberOfSides = 0
   var name: String

   // initializer - initializes the class
   init(name: String) {
       // keyword 'self' is used to indicate the property from the current class
       self.name = name
   }

   func simpleDescription() -> String {
       return "A shape with \(numberOfSides) sides."
   } 
}

// Creating an instance of a class
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

print(shapeDescription)


// Notes
// 1. Every property needs a value assigned - either in its declaration or in its initializer