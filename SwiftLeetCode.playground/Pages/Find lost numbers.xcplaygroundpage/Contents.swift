
// Найти пропущенные элементы в массиве
 
func findNumbersIn(elements: inout [Int]) -> [Int] {
    var result: [Int] = []
    
    elements = elements.sorted()
    
    for index in elements.indices {
        guard index < elements.count - 1 else { continue }
        
        if elements[index + 1] - elements[index] != 1 {
            let current = Array(elements[index] + 1...elements[index + 1] - 1)
            result += current
        }
    }
    
    return result
}

var elements = [-5, 10, -2, 5, -4, -50]

findNumbersIn(elements: &elements)
