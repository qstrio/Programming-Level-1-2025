//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Sarah Wang - 263 on 2025-01-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "Door")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Knock, knock. 😃")
                .padding()
                .background(Color.yellow, in:RoundedRectangle(cornerRadius:8))
            Text("Who's there?")
                .padding()
                .background(Color.teal, in:RoundedRectangle(cornerRadius:8))
            ColorPicker(/*@START_MENU_TOKEN@*/"Title"/*@END_MENU_TOKEN@*/, selection: /*@START_MENU_TOKEN@*/.constant(.red)/*@END_MENU_TOKEN@*/)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
