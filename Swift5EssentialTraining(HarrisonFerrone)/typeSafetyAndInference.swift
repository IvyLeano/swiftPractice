// swift is a type safe language: every variable declared has to have
// 1. a specific type and,
// 2. a value that matches that type

// when you assign an initial value to a variable, the swift compiler can infer the type
// without the type being specified
// example:
var currentHealth = 90              // type inference

// if a variable is not declared with an initial value then the type must be specified
// example:
var characterName: String           // type annotation 
characterName = "King Krull"

// attempting to assign a value, with a different type, to the characterName variable 
// would throw an error
// characterName = 80

// you can also use the syntax below - although not required
var maxHealth: Int = 100            // type annotation + inference

// multiple variables - type annotation shorthand
var x, y, z: Int                   // x, y and z are all Int values



