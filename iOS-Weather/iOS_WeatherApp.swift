//
//  iOS_WeatherApp.swift
//  iOS-Weather
//
//  Created by Jackson Taylor on 2021-10-02.
//

import SwiftUI


@main
struct iOS_WeatherApp: App {
    
    @StateObject var weather = WeatherViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(weather: weather)
                }
                .tabItem {
                    Image(systemName: "cloud.sun.fill")
                    Text("Weather Prediction")
                }
                NavigationView {
                    HistoryView(weather: weather)
                }
                .tabItem {
                    Image(systemName: "clock.arrow.2.circlepath")
                    Text("History")
                }
            }
        }
    }
}
