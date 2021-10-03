//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Russell Gordon on 2021-09-30.
//

import Foundation

class WeatherViewModel: ObservableObject {
    
    // A list of predictions
    @Published var predictions: [Prediction] = []
    
    // Given question, provide weather
    func giveWeatherTo() -> Prediction {
        
        // Start a new session
        var currentPrediction: Prediction
        
        // Get prediction
        currentPrediction = WeatherPredictionGenerator.getPrediction()
        
        // Append
        predictions.append(currentPrediction)
        
        // Return
        return currentPrediction
    }
}

