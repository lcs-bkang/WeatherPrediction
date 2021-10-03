//
//  main.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation

var weatherHistory = WeatherViewModel()

while true {
    
    print("Would you like to know the weather? Y for yes:")
    
    let response = readLine()!
    
    if response == "Y"{
        // Generate a weather prediction
        let prediction = weatherHistory.giveWeatherTo()
        // Show the prediction
        print("Current conditions are \(prediction.condition.description.lowercased()) with a temperature of \(String(format: "%.1f", arguments: [prediction.temperature])) °C.")
        print("That's \(prediction.feel.lowercased())!")
        print("Would you like to see history? Y for yes:")
        let historyResponse = readLine()!
        if historyResponse == "Y"{
            print("Previous Weather")
            print("================")
            for weather in weatherHistory.sessions.reversed() {
                print("""
                Temperature: \(String(format: "%.1f", arguments: [weather.temperature])) °C.
                Condition: \(weather.condition.description)
                Feel: \(weather.feel)
                
                """)
            }
            //        weatherHistory.append("Conditions: \(prediction.condition.description) || Temperature: \(String(format: "%.1f", arguments: [prediction.temperature]))°C.")
            //
            
            //            for weather in weatherHistory {
            //                print(weather)
            //            }
            //
            //        }
        }
    } else {
        exit(0)
    }
}
