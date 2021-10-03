//
//  ContentView.swift
//  iOS-Weather
//
//  Created by Jackson Taylor on 2021-10-02.
//

import SwiftUI

struct ContentView: View {
    
    // Instance of viewmodel
    @ObservedObject var weather: WeatherViewModel = WeatherViewModel()
    
    @State private var temperature: Double = 0.0
    
    @State private var condition: String = ""
    
    @State private var conditionImage: String = ""
    
    @State private var feel: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("\(String(format: "%.1f", arguments: [temperature]))°C.")
            HStack {
                Text(condition)
                Image(systemName: conditionImage)
            }
            Text("\(feel)")
            Button(action: {
                print("Prediction Generated")
                let weatherPrediction = weather.giveWeatherTo()
                temperature = weatherPrediction.temperature
                condition = weatherPrediction.condition.description
                conditionImage = weatherPrediction.condition.systemImage
                feel = weatherPrediction.feel
            },
                   label: {
                Text("Prediction")
            })
                .padding()
            
            
            Spacer()
        }
        .padding()
        .navigationTitle("Weather Prediction")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
