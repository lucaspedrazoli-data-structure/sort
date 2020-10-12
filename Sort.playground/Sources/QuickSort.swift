import Foundation

public func quickSortNaive<T: Comparable>(_ a: [T]) -> [T] {
  guard a.count > 1 else {
    return a
  }
  let pivot = a[a.count / 2]
  let less = a.filter { $0 < pivot }
  let equal = a.filter { $0 == pivot }
  let greater = a.filter { $0 > pivot }
  return quickSortNaive(less) + equal + quickSortNaive(greater)
}

public func partitionLomuto<T: Comparable>(_ a: inout [T],
                                           low: Int,
                                           high: Int) -> Int {
  let pivot = a[high]
  var i = low
  for j in low..<high {
    if a[j] <= pivot {
      a.swapAt(i, j)
      i += 1
    }
  }
  a.swapAt(i, high)
  return i
}

public func quickSortLomuto<T: Comparable>(_ a: inout [T],
                                           low: Int,
                                           high: Int) {
  if low < high {
    let pivot = partitionLomuto(&a, low: low, high: high)
    quickSortLomuto(&a, low: low, high: pivot - 1)
    quickSortLomuto(&a, low: pivot + 1, high: high)
  }
}

public func partitionHoare<T: Comparable>(_ a: inout [T],
                                          low: Int,
                                          high: Int) -> Int {
  let pivot = a[low]
  var i = low - 1
  var j = high + 1
  while true {
    repeat { j -= 1 } while a[j] > pivot
    repeat { i += 1 } while a[i] < pivot

    if i < j {
      a.swapAt(i, j)
    } else {
      return j
    }
  }
}

public func quickSortHoare<T: Comparable>(_ a: inout [T],
                                          low: Int,
                                          high: Int) {
  if low < high {
    let p = partitionHoare(&a, low: low, high: high)
    quickSortHoare(&a, low: low, high: p)
    quickSortHoare(&a, low: p + 1, high: high)
  }
}


