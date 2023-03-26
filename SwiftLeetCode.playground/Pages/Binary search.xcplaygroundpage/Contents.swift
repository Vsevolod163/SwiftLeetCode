
func makeBinarySearchIn(numbers: [Int], for number: Int) -> Int {
    var startIndex = 0
    var endIndex = numbers.count - 1
 
    while startIndex <= endIndex {
        let middleIndex = (startIndex + endIndex) / 2
        
        if numbers[middleIndex] == number {
            return middleIndex
        } else if numbers[middleIndex] < number {
            startIndex = middleIndex + 1
        } else {
            endIndex = middleIndex - 1
        }
    }
    
    return -1
}

makeBinarySearchIn(numbers: [-100, -11, -2, 4, 8, 19, 100, 200, 300], for: -11)


