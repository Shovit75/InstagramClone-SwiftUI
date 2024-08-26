//
//  HomeView.swift
//  Instaclone-app
//
//  Created by Shovit Tamang on 25/08/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            Header()
            ScrollView(.vertical, showsIndicators: false){
                Scrollstories()
                Divider()
                Posts()
                Posts(image:"baby", description: "Hello Baby")
                Posts()
            }
        }
    }
}

#Preview {
    HomeView()
}

struct Header: View {
var body: some View {
    HStack {
        Image("insta")
            .resizable()
            .frame(width: 100, height: 40)
        Spacer()
        HStack(spacing: 20) {
            Image(systemName: "heart")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.black)
            Image(systemName: "message")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.black)
        }
    }
    .padding(.horizontal,15)
    .padding(.vertical, 2)
}
}

struct Story: View {
var image: String = "woman"
var name: String = "Hooman"
var body: some View {
    VStack(spacing:10) {
        Image(image)
            .resizable()
            .frame(width: 60,height:60)
            .cornerRadius(50)
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors:
                        [.red, .purple, .red, .orange, .yellow, .orange ], startPoint: .topLeading, endPoint: .bottomTrailing ), lineWidth: 2.3)
                    .frame(width: 68,height: 68)
            )
            .frame(width: 70, height: 70)
        Text(name)
            .font(.caption)
    }
}
}

struct Scrollstories: View {
var body: some View {
    ScrollView(.horizontal, showsIndicators: false){
        HStack(spacing:15) {
            Story()
            Story(image:"baby",name:"Baby")
            Story(image:"woman2", name: "Woman2")
            Story()
            Story(image:"baby",name:"Baby")
            Story(image:"woman2", name: "Woman2")
            Story()
            Story(image:"baby",name:"Baby")
            Story(image:"woman2", name: "Woman2")
            Story()
            Story(image:"baby",name:"Baby")
            Story(image:"woman2", name: "Woman2")
        }
        .padding(.horizontal, 20)
    }
    .padding(.vertical, 15)
}
}

struct PostHeader: View {
var body: some View {
    HStack {
        HStack {
            Image("woman")
                .resizable()
                .frame(width: 30,height: 30)
                .cornerRadius(50)
            
            Text("Diana Williams")
                .font(.caption)
                .fontWeight(.bold)
        }
        Spacer()
        Image(systemName: "ellipsis")
            .resizable()
            .frame(width: 15, height: 3)
    }
    .padding(.vertical, 12)
    .padding(.horizontal, 20)
}
}

struct PostContent: View {
var image : String
var body: some View {
    VStack{
        Image(image)
            .resizable()
            .frame(width: .infinity)
            .aspectRatio(contentMode: .fit)
        HStack {
            HStack(spacing: 12){
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
                Image(systemName: "message")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
                Image(systemName: "arrow.up.square")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
            }
            Spacer()
            Image(systemName: "bookmark")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.black)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 6)
    }
}
}

struct Posts: View {
var image : String = "woman"
var description : String = "I love You"
var body: some View {
    VStack(alignment: .leading, spacing:0){
        PostHeader()
        PostContent(image: image)
        Text("Liked by Mengto and others")
            .font(.footnote)
            .frame(width: .infinity)
            .padding(.horizontal, 12)
        Text(description)
            .font(.footnote)
            .frame(width: .infinity)
            .padding(.horizontal, 12)
        HStack{
            HStack(spacing:12){
                Image("woman")
                    .resizable()
                    .frame(width: 30,height: 30)
                    .cornerRadius(50)
                
                Text("Add Comments ...")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Spacer()
            HStack{
                Text("😍")
                Text("😂")
                Image(systemName: "plus.circle")
                    .foregroundColor(.secondary)
            }
        }
        .padding(.horizontal,12)
        .padding(.vertical,9)
        
    }
}
}
