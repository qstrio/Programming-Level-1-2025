//
//  ContentView.swift
//  SimpleCalculator
//
//  Created by Sarah Wang - 263 on 2025-02-18.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOne: Int = 0
    @State private var numberTwo: Int = 0
    @State private var result: Int = 0
    @State private var factorial: Int = 1
    
    //define a function to add numberOne and numberTwo
    //store the sum in the result variable
    func calculateSum(){
        result = numberOne+numberTwo
    }
    
    func calculateDifference(){
        result = numberOne-numberTwo
    }
    
    func calculateProduct(){
        result = numberOne*numberTwo
    }
    
    func calculateQuotient(){
        result = numberOne/numberTwo
    }
    
    func calculateFactorial(){
        factorial = 1
        if numberOne < 0 || numberOne == 0 {
             factorial = 0
        } else {
            for i in 1...numberOne {
                factorial *= i
            }
        }
        result = factorial
    }
    
    var body: some View {
        VStack {
            Text("Number 1:")
            TextField("Enter first number: ", value: $numberOne, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Text("Number 2:")
            TextField("Enter second number: ", value: $numberTwo, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button(action: calculateSum) {
                Text("Add")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
            
            Button(action: calculateDifference) {
                Text("Subtract")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
            
            Button(action: calculateProduct) {
                Text("Multiply")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
            
            Button(action: calculateQuotient) {
                Text("Divide")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
            
            Button(action: calculateFactorial) {
                Text("Factorial (Of Number 1)")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
                
                Text("Result: \(result)")
                .font(.title2)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
