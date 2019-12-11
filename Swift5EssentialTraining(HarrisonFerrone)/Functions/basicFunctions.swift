// basic function

// 1. without return type
// declare
func findNearestAlly() {
    print("searching...")
}

//call
findNearestAlly()

// 2. with return type
func findNearestAlly2() -> String {
    print("Searching")
    return "Argus"
}

// store return type
var ally = findNearestAlly2()

// 3. function with parameter
func findNearestAlly3(level: Int) -> String {
    print("Searching for ally above level \(level)")
    return "Argus"
}

var ally2 = findNearestAlly3(level: 5)
