//
//  main.swift
//  Euler-Template
//
//  Created by Adam Haskin on 6/27/18.
//  Copyright © 2018 Adam Haskin. All rights reserved.
//

import Foundation

let stopWatch = Date()

print("Hello, World!")
print("Testing some stuff!")
print("Some additional testing of stuff!")

let dateFormatter = DateFormatter()
let time1 = Date()

dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ" // set template after setting locale
print(dateFormatter.string(from: time1)) // December 31

let countTo = 300000

for index in 1...countTo {
    print("Some Index: \(index)")
}

let time2 = Date()
let time3 = DateInterval(start: time1, end: time2)

print("Time 1: ", dateFormatter.string(from:time1))
print("Time 2: ", dateFormatter.string(from:time2))
// print("Time Diff: ", dateFormatter.string(from:(time3)))

print("Date Interval: ", time3.description)


