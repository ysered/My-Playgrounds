//: [Previous](@previous)
import Foundation

func printResultOf<T>(operation mathFunc: (T, T) -> T, a: T, b: T) {
    print("Result is: \(mathFunc(a, b))")
}

func add<T: Numeric>(a: T, b: T) -> T {
    a + b
}

func multiple<T: Numeric>(a: T, b: T) -> T {
    a * b
}

func subtract<T: Numeric>(a: T, b: T) -> T {
    a - b
}

func divide(a: Double, b: Double) -> Double {
    return a / b
}


printResultOf(operation: add, a: 1, b: 2)

func filterNumbers(numbers: [Int], predicate: (Int) -> Bool) -> [Int] {
    var filtered = [Int]()
    for number in numbers {
        if predicate(number) {
            filtered.append(number)
        }
    }
    return filtered
}

let filtered = filterNumbers(numbers: [1, 2, 3, 4, 5, 10], predicate: { $0 > 3 })

print("Filtered numbers: \(filtered)")
