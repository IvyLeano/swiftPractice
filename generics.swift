// generic functions are written using '<>' brackets
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
print(makeArray(repeating: "knock", numberOfTimes: 4))

// enum generic forms
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)

// use 'where' right before the body to specify a list of requirements
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Element: Equatable, T.Element == U.Element
    {
        for lhsItem in lhs {
            for rhsItem in rhs {
                if lhsItem == rhsItem {
                    return true
                }
            }
        }
        return false
    }
print(anyCommonElements([1,2,3],[3]))


// Notes:
// 1. you can make generic forms of functions and methods as well as classes, enums and structs
// 2. writing <T: Equatable> is the same as writing <T> ... where T: Equatable
