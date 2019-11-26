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
    let ace = Rank.ace
    let aceRawValue = ace.rawValue
}

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
    print(threeDescription)
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
            case .spades, .clubs
                return "black"
            case .hearts, .diamonds
                return "red"
        }
    }
    let hearts = Suit.hearts
    let heartsDescription = hearts.simpleDescription()
}




// Notes:
// 1. enumerations can have methods associated with them
// 2. case values of an enumeration are actual values