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
