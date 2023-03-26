
func makeBubbleSort(numbers: [Int]) -> [Int] {
    var sortedNumbers: [Int] = []
    sortedNumbers = numbers

    for index in sortedNumbers.indices {
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

let numbers = [7, 5, 1, -5, -10]

makeBubbleSort(numbers: numbers)
