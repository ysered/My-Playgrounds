import UIKit

var namesOfNumbers = [
    1: "one",
    2: "two",
    3: "three",
    4: "four"
]

print(namesOfNumbers)

//namesOfNumbers = [:]

let key = 1
if let one = namesOfNumbers[key] {
    print("Name of \(key) number is: \(one)")
} else {
    print("Name for \(key) key couldn't be found 😞")
}

if let removed = namesOfNumbers.removeValue(forKey: 1) {
    print("Value \(removed) removed for key 1.")
    print(namesOfNumbers)
}

func getTupleWithFiveNumbers() -> (one: Int, two: Int, three: Int, four: Int, five: Int)? {
    let one = 1
    let two = 2
    return (one, two, 3, 4, 5)
}

if let (one, two, _, four, _) = getTupleWithFiveNumbers() {
    print("One = \(one), two = \(two), four = \(four)")
}

let result = getTupleWithFiveNumbers()

let noValue = -1
print("One = \(result?.one ?? noValue)")


for item in 1..<10 {
    print(item)
}

let imagePaths = ["star": "/glyphs/star.png",
                  "portrait": "/images/content/portrait.jpg",
                  "spacer": "/images/shared/spacer.gif"]

if imagePaths["star"]?.hasSuffix(".png") == true {
    print("The star image is in PNG format")
}

if let onePath = imagePaths["first"]
    ?? imagePaths["second"]
    ?? imagePaths["portrait"] {
    print(onePath)
} else {
    print("Path not found!")
}



