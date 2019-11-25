// Declaring a class
class Shape {
   var numberOfSides = 0

   func simpleDescription() -> String {
       return "A shape with \(numberOfSides) sides."
   } 
}

// Creating an instance of a class
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

print(shapeDescription)