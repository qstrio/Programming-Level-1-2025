//
//  FeatureCard.swift
//  OnboardingFlow
//
//  Created by Sarah Wang - 263 on 2025-03-10.
//

import SwiftUI

struct FeatureCard: View {
    
    let iconName: String
    let description: String
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                //.font(.system(size: 70))
                .font(.largeTitle)
                .frame(width: 50)
                .padding(.trailing, 10)
            
            Text(description)
            
            Spacer()
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.tint)
                .opacity(0.4)
                .brightness(-0.4)
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FeatureCard(iconName: "person.2.crop.square.stack.fill",
                description: "A multi-line description about a feature paired wth the image on the left.")
}
