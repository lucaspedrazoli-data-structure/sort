example(of: "bubble sort") {
  var array = [9, 4, 10, 3]
  print("Original: \(array)")
  bubbleSort(&array)
  print("Bubble Sorted: \(array)")
}

example(of: "selection sort") {
  var array = [9, 4, 10, 3]
  print("Original: \(array)")
  selectionSort(&array)
  print("Selection sort: \(array)")
}

example(of: "insertion sort") {
  var array = [9, 4, 10, 3]
  print("Original: \(array)")
  insertionSort(&array)
  print("Insertion sorted: \(array)")
}

example(of: "merge sort") {
  let array = [7, 2, 6, 3, 9, 11, 13]
  print("Original array: \(array)")
  print("Merge sorted: \(mergeSort(array))")
}

example(of: "radix sort") {
  var array = [88, 410, 1772, 20]
  print("Original array: \(array)")
  array.radixSort()
  print("Radix sorted: \(array)")
}

example(of: "Quick Sort naive") {
  let array = [7, 2, 6, 3, 9, 11, 13]
  print("Original array: \(array)")
  print("Quick sorted: \(quickSortNaive(array))")
}

example(of: "Quick sort lomuto") {
  var list = [12, 0, 3, 9, 2, 21, 18, 27, 1, 5, 8, -1, 8]
  print("Original array: \(list)")
  quickSortLomuto(&list, low: 0, high: list.count - 1)
  print("Lomuto sorted: \(list)")
}

example(of: "Quick sort hoare") {
  var list = [12, 0, 3, 9, 2, 21, 18, 27, 1, 5, 8, -1, 8]
  print("Original array: \(list)")
  quickSortHoare(&list, low: 0, high: list.count - 1)
  print("Hoare sorted: \(list)")
}

example(of: "Quick sort median") {
  var list = [12, 0, 3, 9, 2, 21, 18, 27, 1, 5, 8, -1, 8]
  print("Original array: \(list)")
  quickSortMedian(&list, low: 0, high: list.count - 1)
  print("Quick sorted: \(list)")
}
