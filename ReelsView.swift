//
//  ReelsView.swift
//  Instaclone-app
//
//  Created by Shovit Tamang on 25/08/2024.
//

import SwiftUI

struct ReelsView: View {
    var body: some View {
        VStack{
            ReelsHeader()
            ReelsViewSection()
            ReelsViewStats()
            Spacer()
        }.background(
        Image("wallpaper")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
        )
    }
}

#Preview {
    ReelsView()
}

struct ReelsHeader: View {
    var body: some View {
        HStack{
            HStack(spacing:12){
                Text("Diana Williams")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                Image(systemName: "chevron.down")
                    .resizable()
                    .frame(width: 20,height: 10)
                    .foregroundStyle(.white)
            }
            Spacer()
            HStack{
                Image(systemName: "camera")
                    .resizable()
                    .frame(width: 30,height: 25)
                    .foregroundStyle(.white)
            }
        }
        .padding(.horizontal,20)
        .padding(.vertical,3)
    }
}

struct ReelsViewSection: View {
    var body: some View {
        VStack{
            Spacer()
            HStack{
                VStack(spacing:20){
                    HStack(spacing:12){
                        Image("woman")
                            .resizable()
                            .frame(width: 40,height: 40)
                            .cornerRadius(50)
                            .overlay{
                                Circle()
                                    .stroke(LinearGradient(colors:
                                                            [.gray], startPoint: .topLeading, endPoint: .bottomTrailing ), lineWidth: 2.3)
                                    .frame(width: 42,height: 42)
                            }
                        Text("DoodleSaurus")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    Text("Super Useful 💡 ...")
                        .font(.caption)
                        .foregroundColor(.white)
                }
                Spacer()
                VStack(spacing:25){
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 28, height: 25)
                        .foregroundColor(.white)
                    Image(systemName: "bubble.left")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                    Image(systemName: "ellipsis")
                        .resizable()
                        .frame(width: 25, height: 5)
                        .foregroundColor(.white)
                }
            }.padding(.horizontal, 20)
        }
    }
}

struct ReelsViewStats: View {
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "music.note")
                    .foregroundColor(.white)
                Text("Prajina - Yo Sahar")
                    .foregroundColor(.white)
                    .padding(.vertical, 8)
            })
            .frame(maxWidth: .infinity)
            .background(Color.white.opacity(0.2))
            .cornerRadius(15)
            Button(action: {}, label: {
                Image(systemName: "person.fill")
                    .foregroundColor(.white)
                Text("Random")
                    .foregroundColor(.white)
                    .padding(.vertical, 8)
            })
            .frame(maxWidth: 120)
            .background(Color.white.opacity(0.2))
            .cornerRadius(15)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("+1")
                    .foregroundColor(.white)
                    .padding(.vertical, 8)
            })
            .frame(maxWidth: 50)
            .background(Color.white.opacity(0.2))
            .cornerRadius(15)
        }
        .padding(.vertical,8)
        .padding(.horizontal,12)
    }
}
