import Foundation

extension Array where Element == Int {
  //[88, 410, 1772, 20]
  public mutating func radixSort() {
    let base = 10
    var done = false
    var digits = 1
    while !done {
      done = true
      var buckets: [[Int]] = .init(repeating: [], count: base)
      forEach { number in
        let remainingPart = number / digits
        let digit = remainingPart % base
        buckets[digit].append(number)
        print("buckets \(buckets)")
        if remainingPart > 0 {
          done = false
        }
      }
      digits *= base
      print("-------digits: \(digits)-------")
      print("-------self::: \(self)")
      self = buckets.flatMap { $0 }
    }
  }
}
