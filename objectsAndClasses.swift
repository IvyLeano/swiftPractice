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
let test = Square(sideLength: 5.2, name: "my test square")
print(test.area())
print(test.simpleDescription())

// getter and setter methods
class EquilateralTriangle: Shape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var perimeter: Double {
        // methods with setter functions must have getter functions
        get {
            return sideLength
        }
        //set with a value that has an implicit name 'newValue'
        set {
            sideLength = newValue * 2
        }
        // set with explicit name 'newValue'
            // set (newValue) {
            //     sideLength = newValue * 2
            // }
    }
}
let triangle = EquilateralTriangle(sideLength: 3.0, name: "Triangle")
// perimeter - get is called
print("Perimeter is: \(triangle.perimeter)")
// perimeter - set is called, passing through 10 as the newValue
triangle.perimeter = 10
print("Perimeter after set is called: \(triangle.perimeter)")

// willset and didset - if you don't need to compute the property but still need to provide code
// that is run before and after setting a new value.
// the code provided is run anytime the value changes outside of an initializer
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size:10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)

triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)

// optional values
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength

print(sideLength)

// Notes
// 1. Every property needs a value assigned - either in its declaration or in its initializer
// 2. There is no requirement for classes to sublcass any standard root class, include superclass as needed
// 3. Methods on a subclass that override the superclass's implementation are marked with 'override'
//      a. overriding a method by accident, without 'override' or
//      b. methods with 'override' that don't actually override any method in the superclass are detected by the compiler
//         resulting in an error
// 4. Initializers:
//      a. set the value of properties that the subclass declares 
//      b. call the superclass's initializer
//      c. change the value of properties defined by the superclass - any additional setup work (getter/setter)