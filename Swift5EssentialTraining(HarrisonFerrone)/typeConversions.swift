var currentGold_Double = 5.832

// explicit conversion
var currentGold_Integer: Int = Int(currentGold_Double)           // converted with loss of precision
var currentGold_String: String = String(currentGold_Double)

// inferred conversion with operators

// inferred - for number literals of different types
// compiler infers a double by default so that there is no loss of precision
var bankDeposit = 37 + 5.892            

// for variables of different types, explicity tell compiler result type
var bankDeposit_explicit = currentGold_Double + Double(currentGold_Integer)


