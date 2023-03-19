// Найти вторую цифру числа

func secondDigitIn(number: Int) -> Int {
    let numberToString = String(number)
    let digitsOfNumber = Array(numberToString)
    // Перевод элементов массива из String в Int
    let digits = digitsOfNumber.compactMap { Int(String($0)) }
    
    guard digits.count > 1 else { return 0 }
    
    return digits[1]
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

let numberToString = String(number)

let indexOfDigit = numberToString.index(numberToString.startIndex, offsetBy: 1)
numberToString[indexOfDigit]

