// Определить четное ли число

func isEven(number: Int) -> Bool {
    number.isMultiple(of: 2)
}

isEven(number: 5)

// Найти все четные числа в массиве

func getEven(from numbers: [Int]) -> [Int] {
    var evenNumbers: [Int] = []
    
    for number in numbers {
        if number.isMultiple(of: 2) {
            evenNumbers.append(number)
        }
    }
    
    return evenNumbers
}


let numbers = [20, 15, -8]

getEven(from: numbers)

// Через filter

let evenNumbers = numbers.filter { $0.isMultiple(of: 2) }

print(evenNumbers)

// Вывести все четные числа от 1 до N

func getEvenNumbersFromOne(to n: Int) -> String {
    let numbers = Array(1...n)
    let result = numbers.reduce("") { $1.isMultiple(of: 2)
        ? $0 + String($1) + " "
        : $0 + "" }

    return result
}

func getEvenNumbersFromOne(to n: Int) -> [Int] {
    Array(1...n).filter { $0.isMultiple(of: 2) }
}

// Если есть 2 одинаковые функции, нужно указывать, какое значение возвращаешь
getEvenNumbersFromOne(to: 10) as String

