import Foundation

func mergeSort<T: Comparable> (_ array: [T]) -> [T]{
    guard array.count > 1 else { return array}
        
    let mid = array.count / 2
    let leftArray = Array(array[0..<mid])
    let rightArray = Array(array[mid...])
    
    var dividedLeftArray = mergeSort(leftArray)
    var dividedRightArray = mergeSort(rightArray)
    
    var sortedArray = array
    var (ri, li) = (0, 0)
    
    for i in 0..<array.count {
        if (li < dividedLeftArray.count && (ri == dividedRightArray.count || dividedLeftArray[li] <= dividedRightArray[ri])) {
            sortedArray[i] = dividedLeftArray[li]
            li += 1
        } else {
            sortedArray[i] = dividedRightArray[ri]
            ri += 1
        }
    }
    return sortedArray
}
