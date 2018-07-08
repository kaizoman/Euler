//
//  main.swift
//  Euler-1
//
//  Created by Adam Haskin on 6/27/18.
//  Copyright © 2018 Adam Haskin. All rights reserved.
/*
 
 [Problem 1: Multiples of 3 and 5](https://projecteuler.net/problem=1)
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
 
 Find the sum of all the multiples of 3 or 5 below 1000.
 */
//

import Foundation

print() //Leading print to space out the output from the command-line

//Timing start. Brute force application timer to diagnose how fast this part of the app runs.
let appStartTime = Date() //Application start time.

//Do some stuff for the problem.

// Setup the array to hold the numbers
var theNumbers: [Int] = []
var sum = 0

// Find all the multiples of 3 between 1 and 1000

for i in 1...999/3{
    theNumbers.append(i*3)
}

// Find all the multiples of 5 between 1 and 1000. Don't add them to the array if they are already in the array.

for i in 1...999/5{
    if (!theNumbers.contains(i*5)){
        theNumbers.append(i*5)
    }
}

//Sort the array to make confirming that the duplicates haven't accidentally been added.

theNumbers.sort()

// Add all the numbers up and put them in sum

for nums in theNumbers{
    sum += nums
}

//Output the numbers so we can see the array of data.

print("The Numbers: \(theNumbers)")

//Output the sum of the data:
print("Sum of theNumbers: \(sum)")


//Stop doing stuff for the problem.

//Timing wrap up - Figure out how long the application took to run and print it to the screen.
let appFinishTime = Date() //Application finish time
let diff = Float32(appFinishTime.timeIntervalSince1970 - appStartTime.timeIntervalSince1970) //This will be time in seconds.
print("\n App StartTime: \(appStartTime) \n App FinishTmie: \(appFinishTime) \n Time to Execute: ", diff, " seconds. \n")

