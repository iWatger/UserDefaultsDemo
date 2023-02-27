//
//  ContentView.swift
//  UserDefaultsDemo
//
//  Created by Ethan Fox on 2/27/23.
//

import SwiftUI

struct ContentView: View {
    @State var cupsDrank = 0
    
    
    var body: some View {
        ZStack {
            
            // Background
            Color(red: 197/255, green: 209/255, blue: 235/255)
            
            
            VStack(spacing: 50) {
                Text("Cups Drank: \(cupsDrank)")
                    .font(.system(.title, design: .rounded))
                    .bold()
                
                // Increment and decrement buttons
                HStack {
                    Button {
                        increment()
                    } label: {
                        Label("Increment", systemImage: "arrow.up")
                            .foregroundColor(.black)
                            .padding(20)
                            .background(Color(red: 125/255, green: 222/255, blue: 146/255))
                            .cornerRadius(15)
                            .padding(5)
                            .background(.black)
                            .cornerRadius(20)
                        
                    }
                    if cupsDrank > 0 {
                        Button {
                            decrement()
                        } label: {
                            Label("Increment", systemImage: "arrow.down")
                                .foregroundColor(.black)
                                .padding(20)
                                .background(Color(red: 240/255, green: 113/255, blue:103/255))
                                .cornerRadius(15)
                                .padding(5)
                                .background(.black)
                                .cornerRadius(20)
                        }
                    }
                }
                .font(.system(.body, design: .rounded))
                .bold()
                .animation(.easeInOut)
                
                // Water image
                Image("cup")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
            }
        }
        .ignoresSafeArea()
    }
    
    
    func increment() {
        cupsDrank += 1
    }
    
    func decrement() {
        if (cupsDrank > 0) {
            cupsDrank -= 1
        } else {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
