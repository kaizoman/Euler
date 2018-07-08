//
//  main.swift
//  Euler-2
//
//  Created by Adam Haskin on July 7, 2018.
//  Copyright © 2018 Adam Haskin. All rights reserved.
//

/* Euler Problem:
 
 [Problem 2: Even Fibonacci numbers](https://projecteuler.net/problem=2)
 Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, …
 By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
 
 */


import Foundation


print() //Leading print to space out the output from the command-line

//Timing start. Brute force application timer to diagnose how fast this part of the app runs.
let appStartTime = Date() //Application start time.


//Do some stuff for the problem.

//Testing Fibonacci array

//Fibonacci generator
func genFibonacci(_ countTo: Int) -> [Int] {
    
    //Setup the first two numbers
    var fibArray: [Int] = [1,2]
    var arrayPosition = 2
    
    //Generate a fibonacci array up to the countTo number
    while (fibArray.last! < countTo) {
        fibArray.append(fibArray[arrayPosition-2] + fibArray[arrayPosition-1])
        arrayPosition += 1
    }
    //Remove last number because it will be bigger than countTo
    fibArray.removeLast()
    
    //Return the array of fibonacci numbers
    return fibArray
}


var fibonacci = genFibonacci(4000000)

print("Here is Fibonacci up to 4000000: \n \(fibonacci)")

//Create an even number array

var oddFibonacciNumbers: [Int] = []
var evenFibonacciNumbers: [Int] = []

for index in 0..<(fibonacci.count){
    if fibonacci[index] % 2 == 0 {
        evenFibonacciNumbers.append(fibonacci[index])
    }else{
        oddFibonacciNumbers.append(fibonacci[index])
    }
}

print("This should be all the even fibonacci up to 4000000: \n \(evenFibonacciNumbers) \n")
print("This should be all the odd fibonacci up to 4000000: \n \(oddFibonacciNumbers) \n")


//Sum all the even Fibonacci numbers to get to the solution.
var sum: Int = 0
for num in evenFibonacciNumbers{
    sum += num
}

print("This should be all the sum of the Even Fibonacci numbers up to 4000000: \(sum) \n")

//Stop doing stuff for the problem.


//Timing wrap up - Figure out how long the application took to run and print it to the screen.
let appFinishTime = Date() //Application finish time
let diff = Float32(appFinishTime.timeIntervalSince1970 - appStartTime.timeIntervalSince1970) //This will be time in seconds.
print("\n App StartTime: \(appStartTime) \n App FinishTmie: \(appFinishTime) \n Time to Execute: ", diff, " seconds. \n")
