//
//  main.swift
//  Euler-Template
//
//  Created by Adam Haskin on 6/27/18.
//  Copyright © 2018 Adam Haskin. All rights reserved.
//

import Foundation


print() //Leading print to space out the output from the command-line

//Timing start. Brute force application timer to diagnose how fast this part of the app runs.
let appStartTime = Date() //Application start time.


//Do some stuff for the problem.
let countTo = 10000000
var someArray: [Int] = []
someArray.append(0)

for index in 1...countTo {
    //print("Some Index: \(index)")
    someArray.append(index)
}

//Stop doing stuff for the problem.


//Timing wrap up - Figure out how long the application took to run and print it to the screen.
let appFinishTime = Date() //Application finish time
let diff = Float32(appFinishTime.timeIntervalSince1970 - appStartTime.timeIntervalSince1970) //This will be time in seconds.
print("Time to Execute: ", diff, " seconds.")

print()
let randomPosition = Int(arc4random_uniform(UInt32(countTo)))
print("Some Array Position: [", randomPosition, "] = ", someArray[randomPosition])
