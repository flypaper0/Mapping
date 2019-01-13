import Foundation


let n = 15594

var array = [Float]()
for _ in 0..<n {
  autoreleasepool {
    array.append(Float.random(in: 0...10))
  }
}

// Start time measurement
let startTime = CFAbsoluteTimeGetCurrent()

// Complexity: O(n)
let summ = array.reduce(0, +)

// Complexity: O(n)
let parts = array.map { $0 / summ }

// Complexity: O(n)
for part in parts {
  print(String(format: "%.3f", part * 100))
}

// End time measurement
let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
print("Algorithm time: \(timeElapsed) s.")

// Total complexity: O(n)

// n = 10000; t = 2.559;
// n = 20000; t = 6.922;
// t = an + c;
// 2.559 = a * 10000 + c;
// 6.922 = a * 20000 + c;
// a = 0.0004363; c = - 1.804;

// t = 5; 5 seconds;
// 5 = 0.0004363 * n - 1.804;
// n = 15594.7742379097;

// Answer:
// 1. O(n);
// 2. The required memory will increase linearly with increasing n;
// 3. 0 < n < 15594.7742379097;

