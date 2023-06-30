// Odd or even problem
var number: Int = 54

if number % 2 == 0 {
    print("\(number) is an even number")
} else if number % 2 != 0 {
    print("\(number) is an odd number")
}

var numbers: Array<Int> = [23,54,40,1,9]

for i: Int in numbers{
    if i % 2 == 0 {
        print("\(i) is an even number")
    } else if i % 2 != 0 {
        print("\(i) is an odd number")
    } else {
        print("Are you sure this is a number?")
    }
}

func evenOrOdd(numbers: Array<Int>) {
    for i: Int in numbers{
        if i % 2 == 0 {
            print("\(i) is an even number")
        } else if i % 2 != 0 {
            print("\(i) is an odd number")
        } else {
            print("Are you sure this is a number?")
        }
    }
}

var otherNumbers: Array<Int> = [29,45,44,1,8]
evenOrOdd(numbers: otherNumbers)

// Ternary operator
func evenOrOddWithTernary(numbers: Array<Int>) {
    for i: Int in numbers {
        print(i % 2 == 0 ? "\(i) is an even number" : "\(i) is an odd number")
    }
}

var largeNumbers: Array<Int> = [219,450,4401,109,8765]
evenOrOddWithTernary(numbers: largeNumbers)
