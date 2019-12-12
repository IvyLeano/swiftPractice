// 1.
enum ActionError: Error {
    case InsufficentMP
    case OutOfRange
    case UnknownError
}

// 2. - 3.
func attackEnemy(mp: Int, distance: Double) -> Bool? {
    // 4.
    guard mp > 10 else {
        throws ActionError.InsufficentMP
    }
    guard distance < 5.89 else {
        throws ActionError.OutOfRange
    }
    //5.
    return true
}
// 6.
do {
    try attackEnemy(mp: 15, distance: 5)
    print("Attack landed!")
} catch ActionError.InsufficentMP {
    print("Sorry, you don't have enough MP for that one...")
} catch ActionError.OutOfRange {
    print("The enemy is too far away to hit...")
} catch ActionError.UnknownError {
    print("Not sure what happened ...")
} catch {
    print("Undefined error detected")
}

// 7.
if let attackSuccess = try? attackEnemy(mp: 55, distance: 5) {
    print("Attack success: \(attackSuccess)")
}