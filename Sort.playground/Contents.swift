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
