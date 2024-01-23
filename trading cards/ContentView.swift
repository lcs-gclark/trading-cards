//
//  ContentView.swift
//  trading cards
//
//  Created by Gray Clark on 2024-01-19.
//

import SwiftUI

struct ContentView: View {
    
    let teamFirstColour: Color
    let teamSecondColour: Color
    let playerImage: String
    let teamLogo: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(teamFirstColour)
                .padding()
            
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(teamSecondColour)
                    .padding()
                .padding()
            
            VStack {
                Image(playerImage)
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .aspectRatio(contentMode: .fit)
                        .padding(.init(top: 50, leading: 45, bottom: 70, trailing: 45))
                Spacer()
            }
            VStack {
                HStack {
                    Spacer()
                    ZStack {
                        Circle()
                            .frame(width: 150)
                        .foregroundColor(teamFirstColour)
                    
                    }

                }
                Spacer()
            }

        }
    }
}

#Preview {
    ContentView(teamFirstColour: .yellow, teamSecondColour: .red, playerImage: "playerimage", teamLogo: "teamlogo")
}
