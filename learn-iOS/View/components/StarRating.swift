//
//  StarRating.swift
//  learn-iOS
//
//  Created by Ricky Primayuda Putra on 12/07/24.
//

import SwiftUI

struct StarRating: View {
    var rating: Double
    
    var body: some View {
        HStack(spacing: 2) {
            ForEach(0..<5) { index in
                if index < Int(rating) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                } else if index < Int(ceil(rating)) {
                    Image(systemName: "star.leadinghalf.filled")
                        .foregroundColor(.yellow)
                } else {
                    Image(systemName: "star")
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
