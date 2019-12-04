struct Starship {
    var name: String
}

let tardis = Starship(name: "TARDIS")
var enterprise = tardis
enterprise.name = "Enterprise"

print(tardis.name)

function sayHello(to name: String) -> String {
    return "Howdy, \(name)!"
}

print("\(sayHello(to: "Jayne"))")