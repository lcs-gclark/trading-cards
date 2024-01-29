//
//  ContentView.swift
//  trading cards
//
//  Created by Gray Clark on 2024-01-19.
//

import SwiftUI

struct DetailView: View {
    
    let teamFirstColour: Color
    let teamSecondColour: Color
    let playerImage: String
    let playerName: String
    let teamLogo: String
    let gradientColors = Gradient(colors: [Color.lightGold, Color.darkGold])
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
                ZStack {
                    Image(playerImage)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .aspectRatio(contentMode: .fit)
                        .padding(.init(top: 50, leading: 45, bottom: 280, trailing: 45))
                    
                    
                        .overlay(
                            Text(playerName)
                                .font(Font.custom("GillSans-UltraBold",size:40))
                                .offset(x: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        )
                    
                    
                    
                    LinearGradient(gradient: gradientColors, startPoint: .leading, endPoint: .trailing)
                        .mask {
                            Text("\(playerName)")
                                .font(Font.custom("GillSans-UltraBold",size:40))
                            
                            
                        }
                    
                    
                }
                
                Spacer()
            }
            VStack {
                HStack {
                    Spacer()
                    ZStack {
                        Image(teamLogo)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
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
    DetailView(teamFirstColour: .yellow, teamSecondColour: .red, playerImage: "playerimage", playerName: "Bob Probert", teamLogo: "teamLogo")
}
