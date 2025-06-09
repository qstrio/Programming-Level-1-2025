//
//  ContentView.swift
//  UserPreferences
//
//  Created by Sarah Wang - 263 on 2025-04-08.
//

import SwiftUI

struct ContentView: View {
    
    //appstorage properties
    @AppStorage("isDarkMode") private var
        isDarkMode: Bool = false
    @AppStorage("username") private var username: String = ""
    @AppStorage("favouriteColour") private var favouriteColour: String = "blue"
    private let colors = ["red", "green", "blue", "yellow", "purple"]
    
    
    var body: some View {
        NavigationView {
            Form {
                Text("User Preferences")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Section(header: Text("Appearance")){
                    Toggle ("Dark Mode", systemImage: "moonphase.waning.crescent", isOn: $isDarkMode)
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                }
                
                Section (header: Text("User Info")) {
                    TextField("Enter Username...", text: $username)
                        .textFieldStyle(.roundedBorder)
                }
                
                
                Section (header: Text("Preferences")) {
                    Picker("Favourite Colour", selection: $favouriteColour) {
                        ForEach(colors, id: .self) {color in
                            Text(color).tag(color)
                            
                        }
                    }
                }
                
                Section (header: Text("Saved Preferences")){
                    Text("Dark Mode: \(isDarkMode ? "Enabled" : "Disabled")")
                    Text("Username: \(username.isEmpty ? "Not Set" : "\(username)")")
                    Text("Favourite Colour: \(favouriteColour)")
                }
            }
        }
        .navigationTitle("User Preferences")
    }
}

#Preview {
    ContentView()
}
