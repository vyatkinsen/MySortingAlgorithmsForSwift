import Foundation

func bubbleSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    var sortedArray = array
    
    for i in 0..<(sortedArray.count - 1) {
        for j in 0..<(sortedArray.count - i - 1) {
            if (sortedArray[j] > sortedArray[j + 1]) {
                let temp = sortedArray[j + 1]
                sortedArray[j + 1] = sortedArray[j]
                sortedArray[j] = temp
            }
        }
    }
    return sortedArray
}
