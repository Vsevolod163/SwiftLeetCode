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

// Работа со строками

let string = "Hello, world!"

// Смещение начального индекса
let start = string.index(string.startIndex, offsetBy: 1)

string[start]
string.count
string.endIndex

// Берет количество символов с конца
string.suffix(2)

// Берет количество символов с начала
let prefix = string.prefix(3)
// Перевод значения в строку
let stringTwo = String(prefix)


// Пример

let number = 15215

// Через остаток
let result = number / 1000 % 10

// Через строку

let stringNumber = String(number)

let indexOfNumber = stringNumber.index(stringNumber.startIndex, offsetBy: 1)
stringNumber[indexOfNumber]

