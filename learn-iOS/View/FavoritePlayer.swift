//
//  FavoritePlayer.swift
//  learn-iOS
//
//  Created by Ricky Primayuda Putra on 12/07/24.
//

import SwiftUI

struct FavoritePlayers: View {
    @Binding var players: [Player]

    var body: some View {
        NavigationView {
            Text("Daftar Pemain Favorit Anda :")
            let favoritePlayers = players.filter { $0.favorit }
            if favoritePlayers.isEmpty {
                Text("Tidak ada Pemain Favorit anda")
            } else {
                List(favoritePlayers.indices, id: \.self) { index in
                    NavigationLink(destination: PlayerDetail(player: $players[players.firstIndex(where: { $0.id == favoritePlayers[index].id })!])) {
                        Text(favoritePlayers[index].nama)
                    }
                }
            }
        }
    }
}
