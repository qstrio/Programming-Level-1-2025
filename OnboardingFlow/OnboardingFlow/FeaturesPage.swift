//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by Sarah Wang - 263 on 2025-03-10.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack (spacing: 30){
            Text("Features")
                .font(.title)
            .fontWeight(.semibold)
            .padding(.bottom)
            .padding(.top, 100)
            
            FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "A multi-line description about a feature paired wth the image on the left.")
            
            
            FeatureCard(iconName: "quote.bubble.fill", description: "Short Summary")
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
