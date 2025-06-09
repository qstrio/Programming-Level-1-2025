//
//  SettingsView.swift
//  TabsAndNavigation
//
//  Created by Sarah Wang - 263 on 2025-04-07.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            Text("Settings")
                .font(.largeTitle)
                .padding()
            
            Toggle("Enable Notifications", isOn: .constant(true))
                .padding()
        }
        .navigationTitle("Settings")
    }
}

#Preview {
    SettingsView()
}
