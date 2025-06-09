//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by Sarah Wang - 263 on 2025-03-10.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                .foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            
            Text("Welcome to MyApp!")
                .font(Font.title)
            .fontWeight(.semibold)
            .padding([.top, .bottom])
            
            
            Text("Description Text description description description description")
                .multilineTextAlignment(.center)
                .font(.title2)
                
        }
        
        .padding()
        
    }
}

#Preview {
    WelcomePage()
}
