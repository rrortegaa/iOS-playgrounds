/* Eficiencia de combustible */

print("This program calculates the fuel efficiency of vehicles")

let initialOdometerValue: Float = 30462
let finalOdometerValue: Float = 30810
let usedGallons: Float = 11.2

print("Initial value in odometer: \(initialOdometerValue)")
print("Final value in odometer: \(finalOdometerValue)")
print("Total gallons used \(usedGallons)")

let mpgFormula: Float = (finalOdometerValue - initialOdometerValue) / usedGallons

let litersPer100Kilometers: Float = 235.215
let mpgConvertionToLiter: Float = litersPer100Kilometers / mpgFormula

print("Liters per Kilometer: \(mpgConvertionToLiter)")

