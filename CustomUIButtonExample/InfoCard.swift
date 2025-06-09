//
//  InfoCard.swift
//  CustomUIButtonExample
//
//  Created by Sarah Wang - 263 on 2025-04-10.
//

import Foundation
import SwiftUI

struct InfoCard: View{
    var title: String
    var subtitle: String
    var icon: String
    
    var body: some View {
        VStack (spacing: 10){
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            Text(title)
                .font(.headline)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Text(subtitle)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color:.gray, radius: 5, x: 0, y:3)
    }
}
