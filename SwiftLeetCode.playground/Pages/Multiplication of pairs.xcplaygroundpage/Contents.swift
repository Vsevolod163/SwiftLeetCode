/*
 Найдите произведение пар чисел в одномерном массиве.
 Парой считаем первый и
 последний элемент, второй и предпоследний и т.д.
 Результат запишите в новом массиве.
*/

func getPairProductIn(numbers: [Int]) -> [Int] {
    var result: [Int] = []
    let indexOfLastElement = numbers.count - 1
    
    for index in 0..<numbers.count / 2 {
        result.append(numbers[index] * numbers[indexOfLastElement - index])
    }
    
    if !numbers.count.isMultiple(of: 2) {
        result.append(numbers[numbers.count / 2])
    }
    
    return result
}

getPairProductIn(numbers: [1, 5, 15, 10, 3])

