// Найти индекс максимального и минимального элемента

func getIndexOfMinElement(in numbers: [Int]) -> Int {
    var mininumIndex = 0
    
    for index in numbers.indices {
        if numbers[index] < numbers[mininumIndex] {
            mininumIndex = index
        }
    }
    
    return mininumIndex
}

func getIndexOfMaxElement(in numbers: [Int]) -> Int {
    var maximumIndex = 0
    
    for index in numbers.indices {
        if numbers[index] > numbers[maximumIndex] {
            maximumIndex = index
        }
    }
    
    return maximumIndex
}

let numbers = [-100, 50, 5, -7, 19]

print("Массив: \(numbers)\nИндекс минимального элемента = \(getIndexOfMinElement(in: numbers))\nИндекс максимального элемента = \(getIndexOfMaxElement(in: numbers))")

