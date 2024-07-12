//
//  ContentView.swift
//  learn-iOS
//
//  Created by Ricky Primayuda Putra on 12/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [Player] = playersData
    var body: some View {
        TabView {
            PlayerRow(players: $players)
                .tabItem {
                    Label("Pemain", systemImage: "person.3")
                }
                        
            FavoritePlayersView(players: $players)
                .tabItem {
                    Label("Pemain Favorit", systemImage: "star.fill")
                }
            
            Profile()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
