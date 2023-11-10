import Foundation

func quickSort<T: Comparable> (_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    var less: [T] = []
    var equal: [T] = []
    var greater: [T] = []
    
    let pivot = array[array.count / 2]
    
    for el in array {
        if (el < pivot){
            less.append(el)
        } else if (el == pivot) {
            equal.append(el)
        } else {
            greater.append(el)
        }
        
    }
    return quickSort(less) + equal + quickSort(greater)
}
