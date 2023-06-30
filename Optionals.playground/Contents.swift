import UIKit

/*
 If let
 guard let
 nil coalescing
 force ungrape
 optional chain
 */

class Programmer {
    let name: String
    let secondName: String?
    let age: Int
    let language: String
    
    init(name: String, secondName: String?, language: String, age: Int) {
        self.name = name
        self.secondName = secondName
        self.age = age
        self.language = language

    }
    
    func code() {
        print("Let me alone... I`m programming")
    }
}


let rose = Programmer(name: "Rose", secondName: nil, language: "Swift", age: 60)
rose.age
rose.secondName

/*
let secondName: String? = "García"
print(secondName)
*/
 
 
// If let
if let secondName = rose.secondName {
    print("My second name is \(secondName)")
} else {
    print("You don't have a second name")
}


// Guard let
func checkSecondName(secondName: String?) {
    guard let secondNameGL = secondName else {
        print("You don't have a second name")
        
        return
    }
    print("My second name is \(secondNameGL)")
}

checkSecondName(secondName: "Cruz")


// Nil coalescing
let secondName = rose.secondName ?? "You don't have a second name"
print(secondName)

// Force Ungrape
// No es recomendable usarlo, a menos que se esté seguro que la variable tiene contenido
// let secondNameFU = rose.secondName!


// Optional Chain
var charles: Programmer?

charles = Programmer(name: "Charles", secondName: nil, language: "Swift", age: 20)
let secondNameOC = charles?.secondName ?? "You don't have a second name"




