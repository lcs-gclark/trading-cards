//
//  body view.swift
//  trading cards
//
//  Created by Gray Clark on 2024-01-19.
//

import SwiftUI

struct playerListView: View {
    var body: some View {
        NavigationView {
              List {
                  NavigationLink("Bob Probert", destination:    ContentView(teamFirstColour: .yellow, teamSecondColour: .red, playerImage: "playerImage", playerName: "Bob Probert", teamLogo: "teamLogo")("Detail view for Item 1"))
                  NavigationLink("player 2", destination: Text("Detail view for Item 2"))
                  NavigationLink("player 3", destination: Text("Detail view for Item 3"))
                  // Add more items as needed
              }
              .navigationTitle("Players of the past")
          }
    }
}

#Preview {
    playerListView()
}
