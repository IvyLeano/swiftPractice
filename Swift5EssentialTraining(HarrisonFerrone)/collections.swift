// ARRAYS: ORDERED LISTS
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


// HOW TO DYNAMICALLY MANIPULATE ARRAYS

// changing and appending items
var characterClasses = ["Ranger", "Paladin", "Druid"]
characterClasses.append("Gunslinger")
characterClasses += ["Healer", "Berserker"]

// inserting and removing items
characterClasses.insert("Beast Master", at:2)
characterClasses.remove(at: 1)

// ordering and querying values
characterClasses.reverse()
var reversedClasses = characterClasses.reversed()

characterClasses.sort()
var sortedClasses = characterClasses.sorted()

// contains is case sensitive
characterClasses.contains("Gunslinger")

print(characterClasses)

// 2D ARRAYS(ARRAYS THAT STORE ARRAYS AS THEIR VALUES) AND SUBSCRIPTS

// Note: 
// 1. type inference works for collections
// 2. we can't dynamically add to an array
// 3. core array methods come with out of the box methods 


