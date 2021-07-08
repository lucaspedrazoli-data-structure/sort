# Sort Algorithms
* Bubble
* Selection
* Insertion

*All of these are comparison-based sorting methods and O(n²) notation. They rely on a comparison method, such as the less-than operator, to order the elements. The number of times this comparison gets called is how you can measure a sorting technique’s general performance.*

## Bubble sort
#### One of the simplest sorts is the bubble sort, which repeatedly compares adjacent values and swaps them

```
for end in array.indices.reversed() {
  var swapped = false
  for current in 0..<end {
    if array[current] > array[current + 1] {
      array.swapAt(current, current + 1)
      swapped = true
    }
  }
  if swapped == false { return }
}
```

## Selection sort
#### Selection sort follows the basic idea of bubble sort, but improves upon this algorithm by reducing the number of swapAt operations. Selection sort will only swap at the end of each pass
```
for current in 0..<(array.count - 1) {
  var lowest = current
  for other in (current + 1)..<array.count - 1 {
    if array[lowest] > array[other] {
      lowest = other
    }
  }
  if lowest != current {
    array.swapAt(lowest, current)
  }
}
```
