//constants used
let label = "The width is "
let width = 94
let apples = 3
let oranges = 5

let widthLabel = label + String(width)
let widthLabel2 = "Width is \(width)"

//Output 
print(label + String(width))
print("I have \(apples) apples, and \(oranges) oranges.")
print("I have \(apples + oranges) pieces of fruit.")
print(widthLabel)
print(widthLabel2)
print("\n") //line break added

//use """ three double quotation marks for strings that take up multiple lines
//this can be done in the print statement, or directly stored to the var / let value
print("""
\(label + String(width))
I have \(apples) apples, and \(oranges) oranges.
I have \(apples + oranges) pieces of fruit.
\(widthLabel)
\(widthLabel2)
""")

//Run
// The width is 94
// I have 3 apples, and 5 oranges.
// I have 8 pieces of fruit.
// The width is 94
// Width is 94


// The width is 94
// I have 3 apples, and 5 oranges.
// I have 8 pieces of fruit.
// The width is 94
// Width is 94



