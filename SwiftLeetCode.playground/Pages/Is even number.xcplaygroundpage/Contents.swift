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
