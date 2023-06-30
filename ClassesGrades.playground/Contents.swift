// Switch
let percentage: Int = 101

switch percentage {
case 0...59: print("You get F grade")
case 60...69: print("You get D grade")
case 70...79: print("You get C grade")
case 80...89: print("You get B grade")
case 90...100: print("You get A grade")
default: print("This is not a valid percentage grade")
}
