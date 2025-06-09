//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Sarah Wang - 263 on 2025-02-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
            }
            .padding()
        }
    }


#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy{
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColour: Color {
        if isRainy{
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName:iconName)
                .foregroundStyle(iconColour)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)")
                .foregroundStyle(Color.secondary)
                .fontWeight(Font.Weight.medium)
        }
        .padding()
    }
}



/*
 VStack {
     Text("Tue")
     Image(systemName:"cloud.rain.fill")
         .foregroundStyle(Color.blue)
     Text("High: 16")
     Text("Low: 4")
 }
 .padding()
 */
