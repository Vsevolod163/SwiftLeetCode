
func makeSelectionSort(numbers: [Int]) -> [Int] {
    var sortedNumbers: [Int] = []
    sortedNumbers = numbers
    
    for index in sortedNumbers.indices {
        var minimumPosition = index
        
        for secondIndex in sortedNumbers.indices where secondIndex > index{
            if sortedNumbers[secondIndex] < sortedNumbers[minimumPosition] {
                minimumPosition = secondIndex
            }
        }
        if index != minimumPosition {
            let temporary = sortedNumbers[index]
            sortedNumbers[index] = sortedNumbers[minimumPosition]
            sortedNumbers[minimumPosition] = temporary
        }
    }
    
    return sortedNumbers
}

let numbers = [-5, 10, -100, 20, -200]

makeSelectionSort(numbers: numbers)
