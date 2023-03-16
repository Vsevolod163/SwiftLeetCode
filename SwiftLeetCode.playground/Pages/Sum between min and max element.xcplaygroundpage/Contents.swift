// Найти сумму между минимальным и максимальным элементом в массиве


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

func getSumBetweenMinAndMaxElement(
    in numbers: [Int],
    _ closureOne: ([Int]) -> Int,
    _ closureTwo: ([Int]) -> Int
) -> Int {
    var sum = 0
    let minimumElementIndex = closureOne(numbers)
    let maximumElementIndex = closureTwo(numbers)
    
    let minimumIndex = minimumElementIndex < maximumElementIndex
        ? minimumElementIndex
        : maximumElementIndex
    
    let maximumIndex = minimumElementIndex < maximumElementIndex
        ? maximumElementIndex
        : minimumElementIndex
    
    for index in numbers.indices {
        guard index >= minimumIndex else { return sum }
        guard index <= maximumIndex else { return sum }
        sum += numbers[index]
    }
    
    return sum
}

print("Сумма межжду минимальным и максимальным элементом = \(getSumBetweenMinAndMaxElement(in: numbers, getIndexOfMinElement, getIndexOfMaxElement))")


// Встроенные функции
let numbers = [200, 25, 100, -50, -100]
let minElement = numbers.min()
let maxElement = numbers.max()

// Извлечение опционала через if let (массив может быть пустой)
if let minElement {
    let indexOfMinElement = numbers.firstIndex(of: minElement)
}

// Извлечение опционала через ?? (массив может быть пустой)
let indexOfMinElement = numbers.firstIndex(of: minElement ?? 0)
let indexOfMaxElement = numbers.firstIndex(of: maxElement ?? 0)


