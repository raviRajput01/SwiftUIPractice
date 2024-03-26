//
//  HomeTabBarView.swift
//  SwiftUIPractice
//
//  Created by Ravi Kumar Singh on 22/03/24.
//

import SwiftUI

struct HomeTabBarView: View {
    
    @State private var defaultSelectTab: Int = 2
    var body: some View {
        TabView(selection: $defaultSelectTab){
            HomeView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }.tag(0)
            
            SearchView()
                .tabItem {
                    Text("Search")
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            PlayView()
                .tabItem {
                    Text("Play")
                    Image(systemName: "play")
                }.tag(2)
            
            MessageView()
                .tabItem {
                    Text("Message")
                    Image(systemName: "message")
                }.tag(3)
            
            ProfileView()
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person")
                }.tag(4)
            
        }.accentColor(Color.red)
    }
}

struct HomeTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabBarView()
    }
}
