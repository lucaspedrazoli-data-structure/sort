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
*every time the bubble find a higher value out od order it will swap the positions*

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
*to reduce the swaps, the selection will do the swap operation only on the last index out of order in the iteration*

## Insertion sort
#### Is a more useful algorithm. The performance of insertion sort can vary. The more the data is already sorted, the less work it needs to do. Insertion sort has a best time complexity of O(n) if the data is already sorted.
```
for current in 1..<array.count {
    for shifting in (1...current).reversed() {
      if array[shifting] < array[shifting - 1] {
        array.swapAt(shifting, shifting - 1)
      } else {
        break
      }
    }
  }
```

*It will do a reversed iteration and will only do a second iteration if the element is out of order*
