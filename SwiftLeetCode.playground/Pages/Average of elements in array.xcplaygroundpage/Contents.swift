// Среднее арифметическое элементов массива

func getAverageOfElements(in numbers: [Int]) -> Double {
    let sum = Double(numbers.reduce(0, +))
    let average = sum / Double(numbers.count)
    
    return average
}

getAverageOfElements(in: [4, 7, 12, 5])

// Использование функции map и замыканий

var numbers = [1, 15, 10]

let sum = 0

numbers = numbers.map { $0 < 2 ? 5 : 2 }
print(numbers)

