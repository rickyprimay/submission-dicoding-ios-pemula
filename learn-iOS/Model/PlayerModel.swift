//
//  PlayerModel.swift
//  learn-iOS
//
//  Created by Ricky Primayuda Putra on 12/07/24.
//

import SwiftUI

struct Player: Identifiable {
    var id = UUID()
    var nama: String
    var umur: Int
    var rate: Double
    var negara: String
    var image: String
    var description: String
    var posisi: String
    var video: String
    var favorit: Bool = false
}

let playersData: [Player] = [
    Player(nama: "Alejandro Garnacho", umur: 20, rate: 10, negara: "Argentina", image: "garnacho", description: "Winger muda berbakat dengan kecepatan tinggi.", posisi: "Winger", video: "https://www.youtube.com/embed/9dRWu4f1RCc?rel=0"),
    Player(nama: "Harry Maguire", umur: 30, rate: 7.2, negara: "England", image: "maguire", description: "Bek tengah yang kuat dalam duel udara.", posisi: "Bek Tengah", video: "https://www.youtube.com/embed/epzOo6WxPJw?rel=0"),
    Player(nama: "Luke Shaw", umur: 28, rate: 7.8, negara: "England", image: "shaw", description: "Bek kiri dengan kemampuan bertahan dan menyerang yang baik.", posisi: "Bek Kiri", video: "https://www.youtube.com/embed/G9zLlq6lsc4?rel=0"),
    Player(nama: "Bruno Fernandes", umur: 29, rate: 9.1, negara: "Portugal", image: "fernandes", description: "Playmaker kreatif dengan visi yang luar biasa.", posisi: "Gelandang Serang", video: "https://www.youtube.com/embed/UtBNPQ4vHuo?rel=0"),
    Player(nama: "Marcus Rashford", umur: 26, rate: 8.4, negara: "England", image: "rashford", description: "Penyerang cepat dan tajam dalam mencetak gol.", posisi: "Penyerang", video: "https://www.youtube.com/embed/KWFOHlY3Oqk?rel=0"),
    Player(nama: "Kobbie Maino", umur: 19, rate: 7.5, negara: "England", image: "kobbie", description: "Pemain munda berbakat", posisi: "Gelandang", video: "https://www.youtube.com/embed/LSTaN-6bOf8?rel=0"),
    Player(nama: "Raphaël Varane", umur: 31, rate: 8.2, negara: "France", image: "varane", description: "Bek tengah berpengalaman dengan kecepatan dan kecerdasan taktis.", posisi: "Bek Tengah", video: "https://www.youtube.com/embed/zdBthc6fCk4?rel=0"),
    Player(nama: "Casemiro", umur: 34, rate: 8.7, negara: "Brazil", image: "casemiro", description: "Gelandang energik dengan kemampuan bertahan yang baik.", posisi: "Gelandang Bertahan", video: "https://www.youtube.com/embed/Od7zsFdfHmU?rel=0"),
    Player(nama: "Anthony Martial", umur: 28, rate: 7.9, negara: "France", image: "martial", description: "Penyerang serba bisa dengan finishing yang tajam.", posisi: "Penyerang", video: "https://www.youtube.com/embed/BKbbxDp03T8?rel=0"),
    Player(nama: "Christian Eriksen", umur: 32, rate: 8.3, negara: "Denmark", image: "eriksen", description: "Gelandang kreatif dengan visi dan kemampuan umpan yang luar biasa.", posisi: "Gelandang Tengah", video: "https://www.youtube.com/embed/hJO47WVhHxY?rel=0")
]
