//
//  Profile.swift
//  learn-iOS
//
//  Created by Ricky Primayuda Putra on 12/07/24.
//

import SwiftUI

struct Profile: View {
    
    var body: some View {
        ScrollView{
            VStack(spacing:14){
                Image("MyPicture")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Rectangle())
                    .cornerRadius(10)
                    .shadow(radius: 10)
                
                VStack(spacing:5){
                    Text("Ricky Primayuda Putra")
                        .font(.title3)
                        .bold()
                    
                    Text("Freelance Developer")
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("Hi, Nama saya Ricky Primayuda Putra. Saya seorang Freelance Developer. Saya suka belajar hal baru setiap harinya.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 20.0)
                
                Divider()
                
                VStack(spacing: 10) {
                    HStack {
                        Image(systemName: "house")
                            .foregroundColor(.blue)
                        Text("Tinggal di Semarang")
                            .font(.headline)
                    }
                    
                    HStack {
                        Image(systemName: "graduationcap")
                            .foregroundColor(.blue)
                        Text("Mahasiswa Universitas Dian Nuswantoro")
                            .font(.subheadline)
                    }
                    
                    HStack {
                        Image(systemName: "person.fill")
                            .foregroundColor(.blue)
                        Text("20 tahun")
                            .font(.subheadline)
                    }
                }
                
            }
            .padding(.vertical, 30.0)
        }
        .padding()
        
    }
}

#Preview {
    Profile()
}

