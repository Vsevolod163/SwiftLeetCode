// Перевернуть массив

func getReverse(array numbers: [Int]) -> [Int] {
    var resultNumbers: [Int] = []
    
    for index in numbers.indices {
        resultNumbers.append(numbers[numbers.count - 1 - index])
    }
    
    return resultNumbers
}

// reverse работает только с переменной
let numbers = [5, 12, 15, -7]

print("Reverse array: \(numbers) = \(getReverse(array: numbers))")

// reverse работает только с переменной
var numbersSecond = [5, 12, 15, -7]

numbersSecond.reverse()
