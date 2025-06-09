//
//  ContentView.swift
//  TabsAndNavigation
//
//  Created by Sarah Wang - 263 on 2025-04-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
