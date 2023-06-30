/* Operadores */

/* Tipos de operadores: */


/*
1. unitarios
-a
2. binarios
a + b
3. terciarios
a + b = c
*/
 
var a: Int = -5
var b: Int = 10 * 4
var c: Int = a + b

var singer: String = "José José"
let sentence: String = "Mi edad es \(c) años"

print(a)
print(b)
print(c)
print(singer)
print(sentence)

/* Calcular días del año*/


let daysOfTheYear: Int = 365
let hoursOnADay: Int = 24
let secondsOnAHour: Int = 3600

let secondsOfAYear: Int = daysOfTheYear * hoursOnADay * secondsOnAHour

print(secondsOfAYear)


let miloAge: Int = 10
let humanAge: Int = 6

let totalAge: Int = miloAge * humanAge

print("La edad humana de Milo es \(totalAge)")

let minimunAge: Int = 17
let markAge: Int = 20

if markAge >= minimunAge {
    print("Genial tienes \(markAge) años, si puedes ir a la fiesta")
}

