//
//  DetailView.swift
//  TabsAndNavigation
//
//  Created by Sarah Wang - 263 on 2025-04-07.
//

import SwiftUI

struct DetailView: View {
    let title: String
    
    var body: some View {
        Text("Details for \(title)")
            .font(.largeTitle)
            .padding()
    }
}

#Preview {
    DetailView(title: "placeholder")
}
