//
//  HomeView.swift
//  TabsAndNavigation
//
//  Created by Sarah Wang - 263 on 2025-04-07.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink(destination: DetailView(title: "Item 1")) {
                    Text("Go to Item 1")
                    Image(systemName: "folder.fill")
                }
                NavigationLink(destination: DetailView(title: "Item 2")) {
                    Text("Go to Item 2")
                        .accentColor(.blue)
                }
                
                NavigationLink(destination: DetailView(title: "Item 3")) {
                    Text("Go to Item 3")
                }
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
