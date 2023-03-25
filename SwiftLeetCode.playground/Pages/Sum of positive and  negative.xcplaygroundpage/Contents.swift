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
