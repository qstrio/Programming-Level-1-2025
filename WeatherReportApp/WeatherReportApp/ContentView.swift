//
//  ContentView.swift
//  WeatherReportApp
//
//  Created by Sarah Wang - 263 on 2025-02-27.
//

import SwiftUI

struct ContentView: View {
    
    @State private var temperature: String = "20"
    @State private var weatherMessage: String = ""
    @State private var messageColour: Color = Color.black
    @State private var messageFont: Font = Font.title2
    
    
    
    var body: some View {
        VStack {
            TextField("Enter temperature in Celsius:", text: $temperature)
                .padding()
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)
            
            Button(action:  {
                // convert temperature to an int
                let temp = Int(temperature)!
                // change the value of weatherMessage depending on the value of temperature
                // if temp < 0, its freezing
                // if 0 < temp < 10, its cold
                // if temp > 10, its warm
                if temp < -273 || temp > 100 {
                    messageColour = Color.black
                    messageFont = Font.title
                    weatherMessage = "Are you sure about that?"
                } else if temp < 0 {
                    messageColour = Color.blue
                    weatherMessage = "It's freezing! 🥶"
                    messageFont = Font.title
                } else if temp < 10 {
                    messageColour = Color.blue
                    weatherMessage = "It's cold. 🌧️"
                    messageFont = Font.title3
                } else if temp < 25 {
                    messageColour = Color.yellow
                    weatherMessage = "It's warm! 🌤️"
                    messageFont = Font.title3
                } else if temp < 35 {
                    messageColour = Color.orange
                    weatherMessage = "It's hot! ☀️"
                    messageFont = Font.title2
                } else {
                    weatherMessage = "It's boiling! 🙀"
                    messageColour = Color.red
                    messageFont = Font.title
                }
                
                
            }) {
                Text("Check Weather")
                    .font(.title)
                    .padding()
                    .background(Color.green)
                    .foregroundStyle(Color.white)
                    .cornerRadius(10)
                
            }
            
            
            
            // Text to display weather message
            Text(weatherMessage)
                .font(messageFont)
                .padding()
                .shadow(color: messageColour, radius: 6)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
