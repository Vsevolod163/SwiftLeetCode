// Нахождение индексов максимального и минимального элемента массива

func findMinElement(in numbers: [Int]) -> Int {
    var minElememet = numbers[0]
    
    for number in numbers {
        if number < minElememet {
            minElememet = number
        }
    }
    
    return minElememet
}

func findMaxElement(in numbers: [Int]) -> Int {
    var maxElement = numbers[0]
    
    for number in numbers {
        if number > maxElement {
            maxElement = number
        }
    }
    
    return maxElement
}



let numbers = [5, -10, 50, -100]
// Встроенные функции
let maxElement = numbers.max()
let minElement = numbers.min()

print("В массиве \(numbers)\nНаименьший элемент = \(findMinElement(in: numbers))\nНаибольший элемент = \(findMaxElement(in: numbers))")

