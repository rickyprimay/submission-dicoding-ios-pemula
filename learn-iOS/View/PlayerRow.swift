// PlayerRow.swift
// learn-iOS
//
// Created by Ricky Primayuda Putra on 12/07/24.
//

import SwiftUI

struct PlayerRow: View {
    @Binding var players: [Player]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(players.indices, id: \.self) { index in
                    VStack(alignment: .leading) {
                        HStack {
                        Image(players[index].image)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(Rectangle())
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                Text(players[index].nama)
                                    .font(.headline)
                                Text("Umur: \(players[index].umur)")
                                StarRating(rating: players[index].rate / 2)
                                Text("Negara: \(players[index].negara)")
                                Text("Posisi: \(players[index].posisi)")
                            }
                        }
                        .padding(.vertical, 8)
                        
                        NavigationLink(destination: PlayerDetail(player: $players[index])) {
                            Text("Lihat Detail")
                                .foregroundColor(.blue)
                                .font(.headline)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .navigationBarTitle("Daftar Pemain")
        }
    }
}

#Preview {
    ContentView()
}
