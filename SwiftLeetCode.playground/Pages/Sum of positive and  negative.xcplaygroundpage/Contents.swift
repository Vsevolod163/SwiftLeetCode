/*
 Задайте массив из 12 элементов, заполненный случайными числами из
 промежутка [-9, 9]. Найдите сумму отрицательных и положительных
 элементов массива.
*/

func createRandomArray(countOfElements: Int) -> [Int] {
    var numbers: [Int] = []
    
    for _ in 0...countOfElements {
        numbers.append(Int.random(in: -9...9))
    }
    
    return numbers
}

func findSumOfPositiveElementsIn(numbers: [Int]) -> Int {
    numbers.reduce(0) { $1 > 0 ? $0 + $1 : $0 }
}

func findSumOfNegativeElementsIn(numbers: [Int]) -> Int {
    numbers.reduce(0) { $1 < 0 ? $0 + $1 : $0 }
}


let numbers = createRandomArray(countOfElements: 12)

findSumOfPositiveElementsIn(numbers: numbers)
findSumOfNegativeElementsIn(numbers: numbers)

// Второй вариант (использование map)

// Создаем массив из 12 случайных чисел в диапазоне [-9, 9]
let numbersV2 = (1...12).map { _ in Int.random(in: -9...9) }
print("Массив: \(numbersV2)")

// Находим сумму положительных и отрицательных элементов массива с помощью reduce
let (positiveSum, negativeSum) = numbersV2.reduce((0, 0)) { (result, number) in
    if number >= 0 {
        return (result.0 + number, result.1)
    } else {
        return (result.0, result.1 + number)
    }
}
print("Сумма положительных элементов: \(positiveSum)")
print("Сумма отрицательных элементов: \(negativeSum)")
