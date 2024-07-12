//
//  PlayerDetail.swift
//  learn-iOS
//
//  Created by Ricky Primayuda Putra on 12/07/24.
//

import SwiftUI

struct PlayerDetail: View {
    @Binding var player: Player
    @State private var isFav = false
    @State private var showingAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 14) {
                Image(player.image)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Rectangle())
                    .cornerRadius(10)
                    .shadow(radius: 10)
                
                Text(player.nama)
                    .font(.title)
                    .bold()
                
                Text("Umur: \(player.umur)")
                    .font(.headline)
                
                Text("Negara: \(player.negara)")
                    .font(.headline)
                
                Text("Posisi: \(player.posisi)")
                    .font(.headline)
                
                Text(player.description)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                
                Text("Video Gamplay :")
                    .font(.body)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal)
                    .bold()
                WebView(url: player.video)
                    .frame(height: 300)
                
                Spacer()
            }
            .navigationBarTitle(player.nama)
            .padding()
            .navigationBarItems(trailing:
                Button(action: {
                    self.player.favorit.toggle()
                self.isFav.toggle()
                        if self.isFav {
                            self.alertMessage = "Anda berhasil menambahkan \(self.player.nama) sebagai favorit"
                        } else {
                            self.alertMessage = "Anda berhasil menghapus \(self.player.nama) dari favorit anda"
                        }
                        self.showingAlert = true
                }) {
                    Image(systemName: player.favorit ? "star.fill" : "star")
                            .imageScale(.large)
                }
            )
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Pesan"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
}

#Preview {
    ContentView()
}
