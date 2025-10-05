//
//  main.swift
//  TheCellSell
//
//  Created by xinyu zhang on 2025-10-03.
//



import Foundation

// 1. Input

// Get number of daytime minutes

var dayTimeMinutes = 0
while true {

    // Prompt
    print("Number of daytime minutes?", terminator: "")

    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }

    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }

    // Check for integer greater than 0
    guard givenInteger > 0 else {
        // Repeat prompt, not a positive integer
        continue
    }

    // Now we have an integer, break input loop
    dayTimeMinutes = givenInteger
    break
}

// Get number of evening minutes
var eveningTimeMinutes = 0
while true {

    // Prompt
    print("Number of eveningtime minutes?", terminator: "")

    // Collect input
    guard let givenInput = readLine() else {
        continue
    }

    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        continue
    }

    // Check for integer greater than 0
    guard givenInteger > 0 else {
        continue
    }

    eveningTimeMinutes = givenInteger
    break
}

// Get number of weekend minutes
var weekendTimeMinutes = 0
while true {

    // Prompt
    print("Number of weekendtime minutes?", terminator: "")

    // Collect input
    guard let givenInput = readLine() else {
        continue
    }

    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        continue
    }

    // Check for integer greater than 0
    guard givenInteger > 0 else {
        continue
    }

    weekendTimeMinutes = givenInteger
    break
}

// 2. Process

// Calculate costs for plan A
var a = 0

if dayTimeMinutes > 100 {
    // Add daytime cost
    a += (dayTimeMinutes - 100) * 25
    // Add evening cost
    a += (eveningTimeMinutes) * 15
    // Add weekend cost
    a += (weekendTimeMinutes) * 20
} else {
    // Daytime cost 0
    a += 0
    a += (eveningTimeMinutes) * 15
    a += (weekendTimeMinutes) * 20
}

// Calculate costs for plan B
var b = 0

if dayTimeMinutes > 250 {
    // Add daytime cost
    b += (dayTimeMinutes - 250) * 45
    // Add evening cost
    b += (eveningTimeMinutes) * 35
    // Add weekend cost
    b += (weekendTimeMinutes) * 25
} else {
    // Daytime cost 0
    b += 0
    b += (eveningTimeMinutes) * 35
    b += (weekendTimeMinutes) * 25
}

// 3. Output (format as dollars and cents)
let aDollars = a / 100
let aCents = a % 100
let bDollars = b / 100
let bCents = b % 100

if a == b {
    print("Plan A cost \(aDollars).\(aCents). Plan B cost \(bDollars).\(bCents). Plan A and Plan B are the same price.")
} else if a < b {
    print("Plan A costs \(aDollars).\(aCents). Plan B cost \(bDollars).\(bCents). Plan A is cheapest.")
} else if a > b {
    print("Plan A costs \(aDollars).\(aCents). Plan B cost \(bDollars).\(bCents). Plan B is cheapest.")
}
