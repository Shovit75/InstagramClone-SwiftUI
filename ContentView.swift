//
//  ContentView.swift
//  Instaclone-app
//
//  Created by Shovit Tamang on 25/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .toolbarBackground(Color.white, for: .tabBar)
                ExploreView()
                    .tabItem {
                        Label("Explore", systemImage: "magnifyingglass")
                    }
                    .toolbarBackground(Color.white, for: .tabBar)
                CameraView()
                    .tabItem {
                        Label("Camera", systemImage: "plus.square")
                    }
                    .toolbarBackground(Color.white, for: .tabBar)
                ReelsView()
                    .tabItem {
                        Label("Reels", systemImage: "play.rectangle.fill")
                    }
                    .toolbarBackground(Color.black, for: .tabBar)
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle.fill")
                    }
                    .toolbarBackground(Color.black, for: .tabBar)
            }
    }
}


#Preview {
    ContentView()
}
