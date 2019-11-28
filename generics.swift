// generic functions are written using '<>' brackets
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes> {
        result.append(item)
    }
    return result
}
makeArray(repeating: "knock", numberOfTimes: 4)

// Notes:
// 1. you can make generic forms of functions and methods as well as classes, enums and structs
