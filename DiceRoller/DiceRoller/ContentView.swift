//
//  ContentView.swift
//  DiceRoller
//
//  Created by Sarah Wang - 263 on 2025-03-11.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
            
            HStack{
                ForEach(1...numberOfDice, id: \.description){ _ in DiceView()
                }
            }
            
            HStack{
                
                Button("Add Dice", systemImage: "plus.circle.fill"){
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 5)
                
                Button("Remove Dice", systemImage: "minus.circle.fill"){
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
               
                
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
