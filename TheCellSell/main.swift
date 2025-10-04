//
//  main.swift
//  TheCellSell
//
//  Created by xinyu zhang on 2025-10-03.
//



import Foundation


enum CellSell {
    case dayTime, eveningTime, weekendTime
}

var cost: CellSell = .dayTime

while true {
    print("Which time period is it? (day/evening/weekend): ", terminator: "")
    
    guard let input = readLine()?.lowercased() else {
        continue
    }
    
    if input == "day" {
        cost = .dayTime
        break
    } else if input == "evening" {
        cost = .eveningTime
        break
    } else if input == "weekend" {
        cost = .weekendTime
        break
    }
}

let Cost = CellSell.dayTime
if cost == .dayTime {
    
    // 1. Input
    var dayTimeMinutes = 0
    while true {
        print("Number of daytime minutes?", terminator:"")
        guard let givenInput = readLine(),
              let givenInteger = Int(givenInput) else { continue }
        dayTimeMinutes = givenInteger
        break
    }

    // 2. Process
    var dayTimeMinutesCostA = 0
    var dayTimeMinutesCostB = 0

    // Plan A
    if dayTimeMinutes > 100 {
        dayTimeMinutesCostA = (dayTimeMinutes - 100) * 25
    }

    // Plan B
    if dayTimeMinutes > 250 {
        dayTimeMinutesCostB = (dayTimeMinutes - 250) * 45
    }

    // 3. Output
    print("Plan A costs \(dayTimeMinutesCostA) whilst Plan B costs \(dayTimeMinutesCostB)")

    if dayTimeMinutesCostA < dayTimeMinutesCostB {
        print("Plan A is cheaper.")
    } else if dayTimeMinutesCostB < dayTimeMinutesCostA {
        print("Plan B is cheaper.")
    } else {
        print("Plan A and Plan B cost the same.")
    }

    
}

else if cost == .eveningTime {
    
    // 1. Input
      var eveningMinutes = 0
      while true {
          print("Number of evening minutes?", terminator:"")
          guard let givenInput = readLine(),
                let givenInteger = Int(givenInput) else { continue }
          eveningMinutes = givenInteger
          break
      }
      
      // 2. Process
      var eveningCostA = 0
      var eveningCostB = 0
      
      // Plan A
      eveningCostA = eveningMinutes * 15
      
      // Plan B
      eveningCostB = eveningMinutes * 35
      
      // 3. Output
      print("Plan A costs \(eveningCostA) whilst Plan B costs \(eveningCostB)")
      
      if eveningCostA < eveningCostB {
          print("Plan A is cheaper.")
      } else if eveningCostB < eveningCostA {
          print("Plan B is cheaper.")
      } else {
          print("Plan A and Plan B cost the same.")
      }
  }
    

else if cost == .weekendTime {
    
    // 1. Input
        var weekendMinutes = 0
        while true {
            print("Number of weekend minutes?", terminator:"")
            guard let givenInput = readLine(),
                  let givenInteger = Int(givenInput) else { continue }
            weekendMinutes = givenInteger
            break
        }
        
        // 2. Process
        var weekendCostA = 0
        var weekendCostB = 0
        
        // Plan A
        weekendCostA = weekendMinutes * 20
        
        // Plan B
        weekendCostB = weekendMinutes * 25
        
        // 3. Output
        print("Plan A costs \(weekendCostA) whilst Plan B costs \(weekendCostB)")
        
        if weekendCostA < weekendCostB {
            print("Plan A is cheaper.")
        } else if weekendCostB < weekendCostA {
            print("Plan B is cheaper.")
        } else {
            print("Plan A and Plan B cost the same.")
        }

}
