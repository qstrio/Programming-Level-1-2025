//
//  DiceView.swift
//  DiceRoller
//
//  Created by Sarah Wang - 263 on 2025-03-11.
//

import SwiftUI

struct DiceView: View {
    
    @State var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
            
            Button("Roll"){
                withAnimation {
                    numberOfPips = Int.random(in:1...6)
                }
                //code
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    DiceView()
}
