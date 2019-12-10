// Arrays: ordered lists

// declaring an array without an initial value
var levelDifficulty: [String]

// declaring an array that has been initialized to 'empty' ->  preferred style
var levelDifficulty2: [String] = []

// declaring arrays with extra syntax
var extraSyntax1: Array<String> = Array<String>()

// declaring an array with values
var levelDifficulty3: [String] = ["Easy", "Moderate", "Veteran", "Nightmare"]

// count and isEmpty
levelDifficulty3.count
levelDifficulty3.isEmpty

// Accessing array values with subscript syntax
var mostDifficult = levelDifficulty3[3]
levelDifficulty3[3] = "very difficult"

// Note: 
// 1. type inference works for collections
// 2. we can't dynamically add to an array


