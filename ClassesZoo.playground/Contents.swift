import UIKit

class Animal {
    var name: String
    var description: String
    var color: String
    var age : Int
    
    init(name: String, description: String, color: String, age: Int) {
        self.name = name
        self.description = description
        self.color = color
        self.age = age
    }
    
    func eat() -> String {
        return ""
    }
    
    func makeNoise() -> String {
        return ""
    }
    
    func move() -> String {
        return ""
    }
    
    func animalData() {
        print("Name: \(name)")
        print("Description: \(description)")
        print("Color: \(color)")
        print("Age: \(age)")
    }
}

let simba: Animal = Animal(name: "Toño", description: "Bengal tiger", color: "orange", age: 4)

simba.animalData()


class Carnivore: Animal {
    var hasFangs: Bool
    
    init(name: String, description: String, color: String, age: Int, hasFangs: Bool) {
        self.hasFangs = hasFangs
        super.init(name: name, description: description, color: color, age: age)
    }
    
    override func eat() -> String {
        return "meat"
    }
}

class Tiger: Carnivore {
    var size: Float
    
    init(name: String, description: String, color: String, age: Int, hasFangs: Bool, size: Float) {
        self.size = size
        super.init(name: name, description: description, color: color, age: age, hasFangs: hasFangs)
    }
    
    override func makeNoise() -> String {
        return "roaaarrrr"
    }
    
    override func move() -> String {
        return "fast"
    }
}

let nala = Tiger(name: "Tara", description: "Sumatra tiger", color: "orange", age: 3, hasFangs: true, size: 150.5)

    print("")

    nala.animalData()

    print("This animal eats \(nala.eat()), makes a sound like \(nala.makeNoise()), has \(nala.color) color, are \(nala.age) years old and have fangs.")

class Herbivore: Animal {
    var eatVegetables: Bool
    
    init(name: String, description: String, color: String, age: Int, eatVegetables: Bool) {
        self.eatVegetables = eatVegetables
        super.init(name: name, description: description, color: color, age: age)
    }
    
    override func eat() -> String {
        return "vegetables"
    }
}

class Cow: Herbivore {
    var hasCalfs: Bool
    
    init(name: String, description: String, color: String, age: Int, eatVegetables: Bool, hasCalfs: Bool) {
        self.hasCalfs = hasCalfs
        super.init(name: name, description: description, color: color, age: age, eatVegetables: eatVegetables)
    }
    
    override func makeNoise() -> String {
        return "moooo"
    }
    
    override func move() -> String {
        return "slow"
    }
}

var monique = Cow(name: "Monique", description: "Swiss cow", color: "white with black spots", age: 3, eatVegetables: true, hasCalfs: true)

print("")

monique.animalData()

print("This animal eats \(monique.eat()), makes a sound like \(monique.makeNoise()), has \(monique.color) color, are \(monique.age) years old and has a calf.")


class Omnivore: Animal {
    var canFly: Bool
    
    init(name: String, description: String, color: String, age: Int, canFly: Bool) {
        self.canFly = canFly
        super.init(name: name, description: description, color: color, age: age)
    }
    
    override func eat() -> String {
        return "fish"
    }
}

class Duck: Omnivore {
    var canSwim: Bool
    
    init(name: String, description: String, color: String, age: Int, canFly: Bool, canSwim: Bool) {
        self.canSwim = canSwim
        super.init(name: name, description: description, color: color, age: age, canFly: canFly)
    }
    
}
