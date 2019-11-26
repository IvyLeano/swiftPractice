// 'enum': used to create an enumeration

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
            case .ace: 
                return "ace"
            case .jack:
                return "jack"
            case .queen:
                return "queen"
            case .king:
                return "king"
            default:
                return String(self.rawValue)
        }
    }
}

 let ace = Rank.ace
 let aceRawValue = ace.rawValue

print("Your card is a ", terminator:"")

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
    print(threeDescription, terminator:"")
}

enum Suit {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
            case .spades:
                return "spades"
            case .hearts:
                return "hearts"
            case .diamonds:
                return "diamonds"
            case .clubs:
                return "clubs"
        }
    }
    func color() -> String {
        switch self {
            case .spades, .clubs:
                return "black"
            case .hearts, .diamonds:
                return "red"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let color = hearts.color()

print(" of \(hearts) in \(color)")

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
    case let .result(sunrise, sunset):
        print("Sunrise is at \(sunrise) and sunset is at \(sunset)")    
    case let .failure(message):
        print("Failure... \(message)")
}

// 'struct' keyword - structures support similar behaviours to classes (methods, initializers)
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
print(threeOfSpadesDescription)

// Notes:
// 1. enumerations can have methods associated with them
// 2. case values of an enumeration are actual values
// 3. the difference between structures and classes is that structures are always copied
//    while classes are passed by reference