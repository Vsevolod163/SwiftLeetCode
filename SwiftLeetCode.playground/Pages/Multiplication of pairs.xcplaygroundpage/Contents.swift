/*
 Найдите произведение пар чисел в одномерном массиве.
 Парой считаем первый и
 последний элемент, второй и предпоследний и т.д.
 Результат запишите в новом массиве.
*/

func getMultiplicationOfPairsIn(numbers: [Int]) -> [Int] {
    var multiplicationOfNumbers: [Int] = []
    let indexOfLastElement = numbers.count - 1
    
    for index in numbers.indices {
        if index < indexOfLastElement - index {
            let multplication = numbers[index] * numbers[indexOfLastElement - index]
            multiplicationOfNumbers.append(multplication)
        } else if index == indexOfLastElement - index {
            multiplicationOfNumbers.append(numbers[index])
        }
    }
    
    return multiplicationOfNumbers
}

getMultiplicationOfPairsIn(numbers: [1, 5, 9, 10, 3])
