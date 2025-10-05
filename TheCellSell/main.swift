//
//  main.swift
//  TheCellSell
//
//  Created by xinyu zhang on 2025-10-03.
//



import Foundation

// Function to safely collect integer input
func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
    while true {
        print(prompt, terminator: "")
        guard let givenInput = readLine(),
              let givenInteger = Int(givenInput) else {
            continue
        }
        if let minValue = minimum, givenInteger < minValue { continue }
        if let maxValue = maximum, givenInteger > maxValue { continue }
        return givenInteger
    }
}

// 1. Input
let dayTimeMinutes = getInput(withPrompt: "Number of daytime minutes? ", minimum: 0, maximum: nil)
let eveningTimeMinutes = getInput(withPrompt: "Number of eveningtime minutes? ", minimum: 0, maximum: nil)
let weekendTimeMinutes = getInput(withPrompt: "Number of weekendtime minutes? ", minimum: 0, maximum: nil)

// 2. Process

// Calculate costs for Plan A
var a = 0

if dayTimeMinutes > 100 {
    a += (dayTimeMinutes - 100) * 25
    a += (eveningTimeMinutes) * 15
    a += (weekendTimeMinutes) * 20
} else {
    a += 0
    a += (eveningTimeMinutes) * 15
    a += (weekendTimeMinutes) * 20
}

// Calculate costs for Plan B
var b = 0

if dayTimeMinutes > 250 {
    b += (dayTimeMinutes - 250) * 45
    b += (eveningTimeMinutes) * 35
    b += (weekendTimeMinutes) * 25
} else {
    b += 0
    b += (eveningTimeMinutes) * 35
    b += (weekendTimeMinutes) * 25
}

// 3. Output (format costs as dollars and cents)
let aDollars = a / 100
let aCents = a % 100
let bDollars = b / 100
let bCents = b % 100

if a == b {
    print("Plan A cost \(aDollars).\(aCents). Plan B cost \(bDollars).\(bCents). Plan A and Plan B are the same price.")
} else if a < b {
    print("Plan A costs \(aDollars).\(aCents). Plan B cost \(bDollars).\(bCents). Plan A is cheapest.")
} else {
    print("Plan A costs \(aDollars).\(aCents). Plan B cost \(bDollars).\(bCents). Plan B is cheapest.")
}
