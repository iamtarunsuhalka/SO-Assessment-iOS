//
//  BottomNavView.swift
//  SO Movie Assessment
//
//  Created by Tarun Suhalka on 19/02/23.
//

import SwiftUI

struct BottomNavView: View {
    
    @State var selectedTab: TabType = .latest
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            NavigationView {
                LatestMovie()
                    .navigationTitle("Latest")
            }
            .navigationBarHidden(true)
            .tabItem {
                Label("Latest", systemImage: "house")
            }
            .tag(TabType.latest)
            
            NavigationView {
                PopularMovieList()
                    .navigationTitle("Popular")
            }
            .navigationBarHidden(true)
            .tabItem {
                Label("Popular", systemImage: "list.dash")
            }
            .tag(TabType.popular)
        }
        .navigationBarBackButtonHidden(true)
    }
}

enum TabType: String {
    case latest
    case popular
}

struct BottomNavView_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavView()
    }
}
