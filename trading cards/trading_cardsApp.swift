//
//  trading_cardsApp.swift
//  trading cards
//
//  Created by Gray Clark on 2024-01-19.
//

import SwiftUI

@main
struct trading_cardsApp: App {
    var body: some Scene {
        WindowGroup {
            DetailView(teamFirstColour: .yellow, teamSecondColour: .orange, playerImage: "playerimage", playerName: "Bob Probert", teamLogo: "teamlogo")
        }
    }
}
