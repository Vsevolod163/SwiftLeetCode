
func quickSort(numbers: inout [Int], leftIndex: inout Int, rightIndex: inout Int) -> [Int] {
    let pivot = numbers[(leftIndex + rightIndex) / 2]
    
    var firstIndex = leftIndex
    var secondIndex = rightIndex
    
    while firstIndex <= secondIndex {
        while numbers[firstIndex] < pivot {
            firstIndex += 1
        }
        
        while numbers[secondIndex] > pivot {
            secondIndex -= 1
        }
        
        if firstIndex <= secondIndex {
            numbers.swapAt(firstIndex, secondIndex)
            firstIndex += 1
            secondIndex -= 1
        }
    }
    
    if leftIndex < secondIndex {
        quickSort(numbers: &numbers, leftIndex: &leftIndex, rightIndex: &secondIndex)
    }
    
    if firstIndex < rightIndex {
        quickSort(numbers: &numbers, leftIndex: &firstIndex, rightIndex: &rightIndex)
    }
    
    return numbers
}

var numbers = [1, -5, 10, -10, 20, 2, -50]
var leftIndex = 0
var rigthIndex = numbers.count - 1

numbers = quickSort(numbers: &numbers, leftIndex: &leftIndex, rightIndex: &rigthIndex)

print(numbers)
