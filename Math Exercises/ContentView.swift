//
//  ContentView.swift
//  Math Exercises
//
//  Created by Cindy Chen on 2024-01-15.
//

import SwiftUI

struct ContentView: View {
    // MARK: Stored properties
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 1
    
    // MARK: Computed properties
    var times: Int {
        return firstNumber * secondNumber
    }
    
    var body: some View {
        VStack {
            
            
            
            VStack {
                HStack{
                    Spacer()
                    Text("\(firstNumber)")
                        .font(.system(size: 50))
                        .padding()
                    
                }
            }
            
            Stepper(value: $firstNumber, label: {Text("select first number")})
                .padding()
            
           
            HStack {
                Image(systemName: "multiply")
                    .font(.system(size: 50))
                    .padding()
                
                Spacer()
                
                Text("\(secondNumber)")
                    .font(.system(size: 50))
                    .padding()
            }
            
            Stepper(value: $secondNumber, label: {Text("select second number")})
                .padding()
                        
         
            
            HStack {
                Spacer()
                Text("\(times)")
                    .font(.system(size: 50))
                    .padding()
            }
            
         
        }
        .padding()
    }
}
#Preview {
    TabView(selection: Binding.constant(3)){
        
        Plus()
            .tabItem {
                Image(systemName: "plus")
                Text("Plus")
            }
            .tag(1)
            
        
        Minus()
            .tabItem {
                Image(systemName: "minus")
                Text("Minus")
            }
            .tag(2)
            
        
        ContentView()
            .tabItem {
                Image(systemName: "multiply")
                Text("Multiply")
            }
            .tag(3)
        
        Text("Divide")
            .tabItem {
                Image(systemName: "divide")
                Text("Divide")
            }
            .tag(4)
        
        
        
    }
    .accentColor(.purple)
}
