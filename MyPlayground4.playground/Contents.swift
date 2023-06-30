// If
var old: Bool = false

if old {
    print("You`re old man")
} else {
    print("You are young")
}

// If - Else
var age: Int = 17

if age >= 18 {
    print("Welcome to my party!")
} else {
    print("You are not allowed")
}
 
// If - Else if - Else
var subscriptions: Int = 10000

if subscriptions >= 10000 {
    print("Congrats you won the platinum price")
} else if subscriptions < 5000 {
    print("Keep working, you need almost 5000 subscriptions to won a price")
} else {
    print("Congrats you won the gold price")
}

// Switch
var dayOfTheWeek: String = "Monday"

switch dayOfTheWeek {
case "Monday": print("Today is Monday")
case "Tuesday": print("Today is Tuesday")
case "Wednesday": print("Today is Wednesday")
case "Thursday": print("Today is Thursday")
case "Friday": print("Today is Friday")
case "Saturday": print("Today is Saturday")
case "Sunday": print("Today is Sunday")
default: print("That is not a day of the week")
}


// Exercises if & switch
var ageOfMyCar: Int = 3
var warrantyPeriod: Int = 5

if ageOfMyCar < warrantyPeriod {
    print("Your car still have manufacturer's warranty")
} else {
    print("Your car no longer has a manufacturer's warranty, but you can still bring it in for maintenance.")
}

var monthOfTheYear: String = "February"

switch monthOfTheYear{
case "January": print("We are in January")
case "February": print("We are in February")
case "March": print("We are in March")
case "April": print("We are in April")
case "May": print("We are in May")
case "June": print("We are in June")
case "July": print("We are in July")
case "August": print("TWe are in August")
case "September": print("We are in September")
case "October": print("We are in October")
case "November": print("We are in November")
case "December": print("We are in December")
default: print("That is not a month of the year")
}


// Functions

func sayHello() {
    print("Hello!")
}

sayHello()

func sayMyName(name: String) {
    print("My name is \(name)")
}

sayMyName(name: "Rose")

func sayMyNameAndAge(name: String, age: Int) {
    print("My name is \(name) and I am \(age) years old")
}

sayMyNameAndAge(name: "Rose", age: 60)

func sayAGreeting() -> String {
    let greeting: String = "Congrats koder, you rocks!"
    return greeting
}

let koderGreeting = sayAGreeting()
print(koderGreeting)

func agesAddition(firstAge: Int, secondAge: Int) -> Int {
    return firstAge + secondAge
}

let BalamAge: Int = 8
let FernandoAge: Int = 32

agesAddition(firstAge: BalamAge, secondAge: FernandoAge)

// Callback function
func callAnotherFunction() {
    sayMyName(name: "Isa")
}

callAnotherFunction()
