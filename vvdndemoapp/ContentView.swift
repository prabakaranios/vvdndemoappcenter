//
//  ContentView.swift
//  vvdndemoapp
//
//  Created by vvdn on 19/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}




class MathOperations {
    
    // Adds two numbers
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    // Subtracts second number from the first
    func subtract(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
    
    // Multiplies two numbers
    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    // Divides first number by the second
    // Throws error if division by zero
    func divide(_ a: Int, _ b: Int) throws -> Int {
        if b == 0 {
            throw DivisionError.divisionByZero
        }
        return a / b
    }
    
    enum DivisionError: Error {
        case divisionByZero
    }
}
