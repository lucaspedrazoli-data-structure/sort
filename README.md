# Sort Algorithms
* Bubble
* Selection
* Insertion

*All of these are comparison-based sorting methods and On² notation. They rely on a comparison method, such as the less-than operator, to order the elements. The number of times this comparison gets called is how you can measure a sorting technique’s general performance.*

## Bubble
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
