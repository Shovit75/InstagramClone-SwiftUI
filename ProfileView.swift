//
//  ProfileView.swift
//  Instaclone-app
//
//  Created by Shovit Tamang on 25/08/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
                ScrollView{
                    ProfileHeader()
                    ProfileStats()
                    ProfileBio()
                    ProfileHighlistsList(profilehighlightimg:"baby")
                    Options()
                    ImageGrid()
                }
        }
        .background(.black)
    }
}

#Preview {
    ProfileView()
}

struct ProfileHeader: View {
    var body: some View {
        HStack{
            HStack(spacing:12){
                Text("Diana Williams")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Image(systemName: "chevron.down")
                    .resizable()
                    .frame(width: 20,height: 10)
                    .foregroundColor(.white)
            }
            Spacer()
            HStack(spacing:20){
                Image(systemName: "at.circle")
                    .resizable()
                    .frame(width: 25,height: 25)
                    .foregroundColor(.white)
                Image(systemName: "plus.square")
                    .resizable()
                    .frame(width: 25,height: 25)
                    .foregroundColor(.white)
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .frame(width: 25,height: 20)
                    .foregroundColor(.white)
            }
        }
        .padding(.horizontal,20)
        .padding(.vertical,3)
    }
}

struct ProfileStats: View {
    var body: some View {
        HStack{
            VStack(spacing:12){
                Image("woman")
                    .resizable()
                    .frame(width: 60,height: 60)
                    .cornerRadius(50)
                Text("Diana Williams")
                    .font(.caption)
                    .foregroundColor(.white)
            }
            .padding(.vertical, 3)
            .padding(.horizontal, 30)
            HStack{
                VStack{
                    Text("9")
                        .foregroundColor(.white)
                    Text("Posts")
                        .font(.caption)
                        .foregroundColor(.white)
                }
                Spacer()
                VStack{
                    Text("677")
                        .foregroundColor(.white)
                    Text("Followers")
                        .font(.caption)
                        .foregroundColor(.white)
                }
                Spacer()
                VStack{
                    Text("454")
                        .foregroundColor(.white)
                    Text("Following")
                        .font(.caption)
                        .foregroundColor(.white)
                }
                Spacer()
            }
            .padding(.horizontal, 3)
        }
    }
}

struct ProfileBio: View {
    var body: some View {
        VStack{
            HStack(spacing:10){
                Button("@Diana_codes") {}
                    .buttonStyle(.bordered)
                    .font(.caption)
                    .foregroundColor(.white)
                    .background(Color.secondary)
                    .cornerRadius(50)
                Button("🌙 In quiet mode") {}
                    .buttonStyle(.bordered)
                    .font(.caption)
                    .foregroundColor(.white)
                    .background(Color.secondary)
                    .cornerRadius(50)
                Spacer()
            }.padding(.horizontal, 20)
            VStack{
                Text("This is a very long bio that should be left-aligned and could potentially grow dynamically in length, requiring it to wrap within the available space.")
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
            }
            .padding(.horizontal,20)
            .padding(.vertical,3)
            VStack{
                HStack{
                    Button("Professional Dashboard") {}
                        .font(.caption)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity,maxHeight: 60)
                        .padding(12)
                }
                .background(Color.secondary)
                .cornerRadius(10)
                .padding(.horizontal,15)
                
                HStack{
                    HStack{
                        Button("Edit Profile") {}
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(12)
                    }
                    .background(Color.secondary)
                    .cornerRadius(10)
                    
                    HStack{
                        Button("Share Profile") {}
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(12)
                    }
                    .background(Color.secondary)
                    .cornerRadius(10)
                    
                    HStack{
                        Button("Contact") {}
                            .font(.caption)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(12)
                    }
                    .background(Color.secondary)
                    .cornerRadius(10)
                }
                .padding(.horizontal, 15)
            }
        }
    }
}

struct ProfileHighlights: View {
    var profilehighlightimg: String = "baby"
    var body: some View {
        HStack{
            VStack{
                Image(profilehighlightimg)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
                    .overlay{
                        Circle()
                            .stroke(LinearGradient(colors:
                                                    [.gray], startPoint: .topLeading, endPoint: .bottomTrailing ), lineWidth: 2.3)
                            .frame(width: 68,height: 68)
                    }
                    .frame(width: 87, height: 80)
                Text("Highlight Name")
                    .font(.caption)
                    .fontWeight(.light)
                    .foregroundColor(.white)
            }
        }
    }
}

struct ProfileHighlistsList: View {
    var profilehighlightimg: String
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ProfileHighlights()
                ProfileHighlights(profilehighlightimg: "woman")
                ProfileHighlights(profilehighlightimg: "woman2")
                ProfileHighlights()
                ProfileHighlights(profilehighlightimg: "woman")
                ProfileHighlights(profilehighlightimg: "woman2")
            }.padding(.horizontal, 15)
        }
    }
}

struct Options: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image(systemName: "square.grid.3x3.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "play.rectangle")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "tag")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
                Spacer()
            }.padding(.vertical,10)
        }
    }
}

struct ImageGrid: View {
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
    ]
    var body: some View {
        LazyVGrid(columns: columns, spacing: 0) {
            ForEach(0..<9) { index in
                VStack {
                    Image("woman")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: .infinity, height: 150)
                }
            }
        }
    }
}
