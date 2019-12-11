// 1.
var shopItemsArray = ["Soap", "Shampoo", "Toothpaste"]
var shopItemsDictionary = ["Soap": 2.50, "Shampoo": 5.50, "Toothpaste": 3.20]

// 2.
var containsItem = shopItemsArray.contains("Body Wash")
print(containsItem)

// 3.
shopItemsArray.insert("Body Wash", at: 0)

// 4.
var selectedItem = shopItemsArray[1]
print(selectedItem)

// 5.
var selectedItemPrice = shopItemsDictionary[selectedItem]
print(selectedItemPrice)

// 6.
var fullArmorSet: Set = ["Comb", "Helm", "Visor"]
var currentArmorSet: Set = ["Comb", "Visor"]

// 7.
var subtract = fullArmorSet.subtract(currentArmorSet)
print(subtract)

// 8.
var armorPieceTuple: (String, Double, Bool) = (name: "Visor", cost: 50.99, canEquip: true)
print(armorPieceTuple)