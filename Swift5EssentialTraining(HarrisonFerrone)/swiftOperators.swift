// Operators:
// 1. create mathematical expressions
// 2. evaluate equality
// 3. evaluate logic
// 4. declare value ranges

// 1. arithmetic: swift follows B.E.D.M.A.S
var usingMathIRL = 5 + 4 - 3 / 2 * 1

// compound assignment operators
var currentHealth = 45
currentHealth *= currentHealth      // same as currentHealth = currentHealth * 5  

// modulo (%): returns remainder
var experienceOverFlow = 100 % 90           // remainder is 10

// 2. comparision: ==, !=, >, <, >=, <=
var x = 20
var y = 70
var bool = x > 70 

// 3. logical: !(NOT operator or "Bang" operator), &&, ||
var bool2 = x > 70 || y == 70

// 4. ranges: 1...5 or 1..<5 
for i in 1...5 {
    print(i)
}

for i in 1..<5 {
    print(i)
}