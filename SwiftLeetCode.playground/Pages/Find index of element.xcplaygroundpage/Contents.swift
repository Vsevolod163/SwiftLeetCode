
func findIndexOf(element: Int, in numbers: [Int]) -> Int {
    var resultIndex = 0
    
    for index in numbers.indices {
        if numbers[index] == element {
            resultIndex = index
        }
    }
    
    return resultIndex
}

findIndexOf(element: 5, in: [10, -100, -1, 5])
