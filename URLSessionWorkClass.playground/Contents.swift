import UIKit

/*
1. Tener una URL -> https://jsonplaceholder.typicode.com/posts
2. Crear una URLSession, shared es una instancia de URLSession o singleton
3. Asignar una tarea a la URLSession
4. Ejecutar la tarea
*/

func request() {
    // 1. Tener una URL
    let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
    // 2. Crear una URLSession
    let urlSession = URLSession.shared
    /* Estas son otras formas de definir la urlSession*/
    //let urlSession = URLSession(configuration: .ephemeral)
    //let urlSession = URLSession(configuration: .background(withIdentifier: <#T##String#>))
    
    // 3. Asignar una tarea a la URLSession
    let dataTask = urlSession.dataTask(with: url!) {
        data, response, error in
        print("Data: \(String(describing: data))")
        print("Response: \(String(describing: response))")
        print("Error: \(String(describing: error))")
    }
    
    // 4. Ejecutar la tarea
    dataTask.resume()
}

request()
