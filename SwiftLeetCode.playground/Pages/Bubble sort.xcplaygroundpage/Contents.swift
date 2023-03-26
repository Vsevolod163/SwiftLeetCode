
func bubbleSort(numbers: [Int]) -> [Int] {
    var sortedNumbers: [Int] = []
    sortedNumbers = numbers

    for index in sortedNumbers.indices where index < sortedNumbers.count - 1 {
        for secondIndex in sortedNumbers.indices where secondIndex > index {
            if sortedNumbers[index] > sortedNumbers[secondIndex] {
                let temporary = sortedNumbers[index]
                sortedNumbers[index] = sortedNumbers[secondIndex]
                sortedNumbers[secondIndex] = temporary
            }
        }
    }
    
    return sortedNumbers
}

let numbers = [7, 5, 1, -5, 2]

bubbleSort(numbers: numbers)
