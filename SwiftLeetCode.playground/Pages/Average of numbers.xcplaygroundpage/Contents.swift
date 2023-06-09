import UIKit

/*
 Задача:
 Найти среднее арифметическое
 
 Используется вариативный параметр Double...
 Функция может принять сколько угодно значений
*/


// Первый варинт

func getAverageOf(numbers: Double...) -> Double {
    var result = 0.0

    for number in numbers {
        result += number
    }

    result /= Double(numbers.count)

    return result
}

let firstResult = round(getAverageOf(numbers: 5, 5, 5, 5) * 100 / 100)

print("Среднее арифметическое: \(firstResult)\n")


// Второй вариант

// В данном случае возвращаем кортеж (массив наших чисел и результат)
func getAverageOf(numbers: Double...) -> ([Double], Double) {
    // Функция высшего порядка(в данном случае складвает все элементы массива)
    let sum = numbers.reduce(0, +)
    let result = sum / Double(numbers.count)
    
    return (numbers, result)
}

let secondResult = getAverageOf(numbers: 7, 1, 3, 5) as ([Double], Double)

/*
 map - функция высшего порядка, в данном случае перебирает все
 элементы массива и приводит их к типу String. Через доллар обращаемся
 к элементу массива (замыкание).
 К элементу кортежа обращаемся через индекс
*/
let parametersToString = secondResult.0.map { String($0) }
// joined - в данном случае переводит массив с типом String в строку
let formatedParameters = parametersToString.joined(separator: ", ")

print("Среднее арифметическое чисел \(formatedParameters) = \(secondResult.1)")
