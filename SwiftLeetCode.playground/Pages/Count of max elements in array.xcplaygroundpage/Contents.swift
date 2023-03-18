// Найти количество наибольших элементов массива

func getCountOfMaxElements(in numbers: [Int]) -> Int {
    let maxElement = numbers.max()
    
    let count = numbers.reduce(0) { $0 + ($1 == maxElement ? 1 : 0) }

//    for number in numbers {
//        count += number == maxElement ? 1 : 0
//    }
    
    return count
}



getCountOfMaxElements(in: [5, 10, 20, 20, 3, 20])
