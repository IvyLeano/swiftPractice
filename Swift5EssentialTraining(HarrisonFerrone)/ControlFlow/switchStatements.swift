// switch: takes a value and runs it against possile matching patterns to execute a block of code
let initial = "H"
let hp = 26
let mp = 24

// simple switch
switch initial {
    case "H":
        print("I'm guessing Harold?")
    case "A":
        print("Maybe Alita?")
    default:
        print("I've got nothing...")
}

// complex variations - multiple values, ranges, value binding
// multiple values are checked
switch (mp, hp) {
    case (15, 10):
        print("Great job")
    // ranges are used
    case (1...15, 20..<25):
        print("Ranges are the best!")
    // value binding can be used
    case (let localMP, let localHP) where localMP + localHP > 20:
        print(localMP, localHP)
    default:
        print("I've got nothing...")
}