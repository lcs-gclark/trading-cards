//
//  ContentView.swift
//  trading cards
//
//  Created by Gray Clark on 2024-01-19.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack{
            Color(.blue)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("hello")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
            Spacer()
                ZStack {
                    Rectangle()
                        .foregroundColor(.blue)
                    Rectangle()
                        .foregroundColor(.white)
                        .padding()
                    Rectangle()
                        .foregroundColor(.red)
                        .padding()
                        .padding()
                    Rectangle()
                        .foregroundColor(.white)
                        .padding()
                        .padding()
                        .padding()
                }
                Rectangle()
                    .foregroundColor(.white)
                    .ignoresSafeArea()
            }
                
        }
    }
}

#Preview {
    ContentView()
}
