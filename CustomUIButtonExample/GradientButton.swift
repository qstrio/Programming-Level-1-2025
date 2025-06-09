//
//  GradientButton.swift
//  CustomUIButtonExample
//
//  Created by Sarah Wang - 263 on 2025-04-10.
//

import Foundation
import SwiftUI

struct GradientButton: View {
    // Properties
    var title: String
    var gradientColors: [Color]
    var action: () -> Void
    
    var body: some View {
        Button(action: action){
            Text(title)
                .font(.headline)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    LinearGradient(colors: gradientColors, startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: 0, y: 3)
        }
        .padding(.horizontal)
    }
}
