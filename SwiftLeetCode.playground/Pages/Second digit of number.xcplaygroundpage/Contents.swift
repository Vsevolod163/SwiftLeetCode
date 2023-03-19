// Найти вторую цифру числа

func secondDigitIn(number: Int) -> Int {
    let numberIntToString = String(number)
    let numberStringToArray = Array(numberIntToString)
    // Перевод элементов массива из String в Int
    let numbers = numberStringToArray.compactMap { Int(String($0)) }
    
    guard numbers.count > 1 else { return 0 }
    
    return numbers[1]
}

secondDigitIn(number: 179)



