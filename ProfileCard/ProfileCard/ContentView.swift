//
//  ContentView.swift
//  ProfileCard
//
//  Created by Sarah Wang - 263 on 2025-01-31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GroupBox() {
                Image(systemName:"crown")
                    .scaledToFit()
                    .padding()
                Image("cat 1")
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.orange, lineWidth: 4))
                    .scaledToFit()
                    .shadow(color: Color.yellow, radius:5)
                    .padding()
                Text("His Majesty King Orangeius III")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Galactic Dictator | Sith Lord ")
                Gauge(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, in: /*@START_MENU_TOKEN@*/0...1/*@END_MENU_TOKEN@*/) {
                    Text("His Power is Growing ⬇")
                        .padding()
                }
                
            }
            
        }
        .padding()
        .background(Image("canva-blue-abstract-aesthetic-phone-wallpaper-n4GFF7_5giE"))
    }
        
}


#Preview {
    ContentView()
}
