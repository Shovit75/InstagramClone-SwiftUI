//
//  ExploreView.swift
//  Instaclone-app
//
//  Created by Shovit Tamang on 25/08/2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        VStack{
            ScrollView{
                SearchBar()
                ExploreList()
            }
        }
    }
}

#Preview {
    ExploreView()
}

struct SearchBar: View {
    var body: some View {
        VStack {
            Button(action: {}){
                HStack {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 20))
                    Text("Search")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 6)
                    .padding(.horizontal,10)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(.horizontal,20)
            .padding(.vertical, 6)
        }
    }
}

struct ExploreList: View {
    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        LazyVGrid(columns: columns, spacing: 0) {
            ForEach(0..<15) { index in
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
