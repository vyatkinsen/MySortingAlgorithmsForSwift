import Foundation

func insertionSort<T: Comparable> (_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    var sortedArray = array
    
    for i in 1..<array.count {
        var j = i
        while (j > 0 && sortedArray[j - 1] > sortedArray[j]) {
            let temp = sortedArray[j - 1]
            sortedArray[j - 1] = sortedArray[j]
            sortedArray[j] = temp
            j -= 1
        }
    }
    return sortedArray
}
