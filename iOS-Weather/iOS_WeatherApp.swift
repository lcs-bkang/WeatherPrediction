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
            NavigationView {
                ContentView(weather: weather)
            }
        }
    }
}
