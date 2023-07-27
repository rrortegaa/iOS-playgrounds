import UIKit

/* Closures */
/* -------- */

/*
 Un closure es una función que puede tratarse como una variable
 Es una función anónima que se asigna a una variable
*/


/* Declaramos este closure que no tiene entradas y no devuelve nada */
var aClosure: () -> Void = {
    
}

/* Un closure que retorna un entero */
var aReturningClosure: () -> Int

/* Un closure que recibe un entero */
var aClosureWithParameter: (Int) -> Void


aClosure = {
    print("This is an empty closure")
}

aClosure()


aReturningClosure = {
    print("This is a closure that returns a value")
    return 1
}

print(aReturningClosure())


/*
 func foo(parameter: int)
*/

aClosureWithParameter = { number in
    print("Input: \(number)")
}

aClosureWithParameter(2)


var closureWithMultipleInputsAndOutputs: (Int, String) -> Int = { number, word in
    print("Number: \(number) and Word: \(word)")
    return 1
}

closureWithMultipleInputsAndOutputs(23, "Boris")

/* Optional closure con contenido */
var anOptionalClosure: (() -> Void)? = {
    print("This is an optional closure")
}

anOptionalClosure?()

/* Optional closure sin contenido */
var optionalClosure: (() -> Void)? = {

}

optionalClosure?()

/* */
if let nonOptionalClosure = anOptionalClosure {
    nonOptionalClosure
}

/*
 guard let nonOptionalClosure = anOptionalClosure else { fatalError() }
 nonOptionalClosure()
 */


/* Pasar un Closure a una función */
func makeNetworkCall(inputParams: String, completion: () -> Void ) {
    print(inputParams)
    completion()
}

makeNetworkCall(inputParams: "https://kodemia.mx", completion: {
    print("Completion")
})

/* Pasar un Closure a una función y escribir el closure en otra forma */
func makeSecondNetworkCall(inputParams: String, completion: () -> Void ) {
    print(inputParams)
    completion() // TODO: Investigar completions en Swift
}

makeSecondNetworkCall(inputParams: "https://kodemia.com") {
    /*
     Swift infiere que este es Código del completion, solo funciona si el completion es es último parámetro que se le pasa a la función
    */
    print("Another completion")
}

/*
 @escaping indica que este closure se puede usar más adelante de manera asíncrona o incluso también en otro hilo
*/
func asynchronousWork(completion: @escaping () -> Void) {
    DispatchQueue.global(qos: .userInitiated).async {
        /* Todo este código es asíncrono */
        completion()
    }
}

class NetworkManager {
    var urlSession = URLSession.shared
    
    func performNetworkCall() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/post") else { return }
        
        /* data, response, error son las entradas del closure */
        urlSession.dataTask(with: url) { [weak self] data, response, error in self?.finishRequest()}.resume() // Esta es una Strong reference, se usa [weak self] para volver la referencia en débil y que no se vaya a generar un Retain Cycle, cuando lo volvemos weak, entonces debemos tratar a self como opcional.
    }
    
    func finishRequest() {
        print("Finished request")
    }
}
