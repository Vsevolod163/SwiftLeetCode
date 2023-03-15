// Найти факториал числа N

func factorialOf(number: Int) -> (Int, Int) {
    guard number > 0 else { return (number, 0) }
        
    var factorial = 1
        
    for number in 1...number {
        factorial *= number
    }
    
    return (number, factorial)
}

let factorial = factorialOf(number: 5)

print("Factorial of number \(factorial.0) = \(factorial.1)")
