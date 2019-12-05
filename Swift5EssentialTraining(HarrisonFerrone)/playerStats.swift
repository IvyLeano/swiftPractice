
// Tasks:
// 1. 
var characterName = "Tony Stark"
var weaponClassification = "Repulsors"

// 2. 
characterName += " - Iron Man"

// 3. 
var currentMana = 9.45

// 4.
var manaPercentage = String(currentMana / 100)

// 5.
var debugStats = "Character: \(characterName)\nWeapon: \(weaponClassification)\nCurrentMana: \(currentMana)\nManaPercentage: \(manaPercentage)"

// 6.
var questAccepted = true
var canQuest = true

// 7. 
var questStatus = questAccepted && canQuest

// 8. 
debugStats.append(contentsOf: "\nQuest Status: \(questStatus)\nCan Quest: \(canQuest)\n")
print(debugStats)
