import UIKit

/*
UserDefaults

 1. LLamar a la clase
 2. Agregar la instancia standar
 3. Identificar el tipo de dato
 4. Settear los datos
 
*/

/* Ejercicio 1
let userDefaults = UserDefaults.standard

userDefaults.set("Rose", forKey: "name")
userDefaults.string(forKey: "name")
userDefaults.removeObject(forKey: "name")
userDefaults.string(forKey: "name")

userDefaults.set(22, forKey: "number")
userDefaults.integer(forKey: "number")
userDefaults.removeObject(forKey: "number")
userDefaults.integer(forKey: "number")


userDefaults.set(Date(), forKey: "currentDate")
userDefaults.object(forKey: "currentDate")

let movies = ["The Shining", "The Shutter", "Chucky"]
userDefaults.set(movies, forKey: "horrorMovies")
userDefaults.object(forKey: "horrorMovies")

let array = userDefaults.object(forKey: "horrorMovies") as! [String]
array[2]

userDefaults.set("Rose", forKey: "koder")
userDefaults.synchronize() // Método que se usaba antes para asegurarnos que se guardaban los valores
userDefaults.string(forKey: "koder")
userDefaults.removeObject(forKey: "koder")
*/
 

/*
 Cómo guardar las preferencias de un usuario con UserDefaults
 
 1. Modelo de datos - struct
 2. Colocar la info del usuario
 3. Configurar la info en formato JSON, usando JSONEncoder()
 4. Decodificar con JSONDecode()
 
 */

// 1. Modelo de datos - struct
struct User: Codable {
    var name: String
    var email: String
    var age: Int
    var favoriteMovie: String
}

let user = User(name: "Rose", email: "rrortegaa@gmail.com", age: 10, favoriteMovie: "The Shining")

let userDefaults = UserDefaults.standard

// Codificar la info para convertirla en un objeto JSON
let encoder = JSONEncoder()
if let encoded = try? encoder.encode(user) {
    userDefaults.set(encoded, forKey: "SavedUserConfig")
}

// Para hacer legible la info guardada en userDefault hay que decodificarlo usando JSONDecoder()
if let savedUserConfiguration = userDefaults.object(forKey: SavedUserConfig) as? Data {
    let decoder = JSONDecoder()
    if let loadedUserConfig = try? decoder.decode(User.self, from: savedUserConfiguration) {
        print(loadedUserConfig.name)
    }
}
