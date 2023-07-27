import UIKit

/* Error Handling */
/* -------------- */

/* Las enumeraciones nos sirven como una especie de catálogo */
enum DivisionErrors: Error {
    case tryingToDivideByZero
    case stringIsNotNumber
}

/*
 _ nos indica que ya no ESTAMOS OBLIGADOS a escribir el nombre del parámetro
 _ number1
 divide("1", "3")
*/
func divide(_ dividend: String, by divisor: String) throws -> Double {
    /* No pudimos crear un double a patir de una cadena */
    guard let dividend = Double(dividend) else {
        throw DivisionErrors.stringIsNotNumber
    }
    
    /* La cadena no puede castearse a número */
    guard let divisor = Double(divisor) else {
        throw DivisionErrors.stringIsNotNumber
    }
    
    if divisor == 0 {
        throw DivisionErrors.tryingToDivideByZero
    }
    
    return dividend / divisor
}

do { // Código que puede fallar
    let result = try divide("10", by: "a")
    print(result)
} catch { // Manejo del error
    print("Something wrong happened")
}

do { // Código que puede fallar
    let result = try divide("10", by: "0")
    print(result)
} catch let customError { // Manejo del error
    print("Something wrong happened \(customError)")
}

do { // Código que puede fallar
    let result = try divide("10", by: "1a")
    print(result)
} catch { // Manejo del error
    /* El compilador provee por default una Constante que contiene el error y siempre será "error" */
    print("Something wrong happened \(error)")
}

do { // Código que puede fallar
    let result = try divide("10", by: "0")
    print(result)
} catch DivisionErrors.stringIsNotNumber { // Manejo específico de string isn not number
    print("One of the inputs is not a number")
} catch DivisionErrors.tryingToDivideByZero {
    print("You trying to divide by zero")
}


let result: Double? = try? divide("10", by: "5")

print("Result: \(result)")

guard let result2 = try? divide("10", by: "5") else {
    fatalError("Error")
}
print("Result2: \(result2)")
