// tuples: can take a group of values and store them as one compound value
// similar to arrays, but tuples can store values of different types so that you can mix and match as needed

// simple tuple
var upperCutAttack: (String, Int, Bool) = ("Uppercut Smash", 25, true)

// to access tuples when you know what values are stored at each position
print(upperCutAttack.0)
print(upperCutAttack.1)
print(upperCutAttack.2)

// unpack each tuple value into its own name variable
// three variable names are in parenthesis,
// the swift compiler automatically parses uppercutAttack into the variables 
var (attack, damage, rechargeable) = upperCutAttack
print(attack)
print(damage)
print(rechargeable)

// naming tuple values
var planetSmashAttack = (name: "Planet Smash", damage: 45, rechargeable: true)

// we still have to initialize shieldStomp just like any other variable
planetSmash.rechargeable 

// nameing values with type annotation
var shieldStomp: (name: String, damage: Int, rechargeable: Bool)
shieldStomp.damage = 100
