//
//  HistoryView.swift
//  iOS-Weather
//
//  Created by Brad Kang on 2021-10-03.
//

import SwiftUI

struct HistoryView: View {
    
    @ObservedObject var weather: WeatherViewModel = WeatherViewModel()
    
    @State private var temperature: Double = 0.0
    
    @State private var condition: String = ""
    
    @State private var conditionImage: String = ""
    
    @State private var feel: String = ""
    
    var body: some View {
        
        List(weather.predictions.reversed()) { prediction in
            VStack(alignment: .leading) {
                Text("\(String(format: "%.1f", arguments: [prediction.temperature]))°C.")
                HStack {
                    Text(prediction.condition.description)
                    Image(prediction.condition.systemImage)
                }
                Text(prediction.feel)
            }
            .padding()
            .navigationTitle("Prediction History")
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
