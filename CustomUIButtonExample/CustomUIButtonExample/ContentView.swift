//
//  ContentView.swift
//  CustomUIButtonExample
//
//  Created by Sarah Wang - 263 on 2025-04-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing:20) {
            
            InfoCard(title: "FirstName LastName",
                     subtitle: "Position",
                     icon: "person.circle")
            
           GradientButton(
            title: "Tap me",
            gradientColors: [Color.blue, Color.purple]
           ){
               print("Button tapped!")
           }
            
            GradientButton(
            title: "Learn More",
            gradientColors: [Color.orange, Color.red]
            ){
                print("Learn More button tapped!")
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
