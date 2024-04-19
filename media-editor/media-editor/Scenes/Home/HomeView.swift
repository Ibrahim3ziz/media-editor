//
//  HomeView.swift
//  media-editor
//
//  Created by Ibrahim Abdul Aziz on 04/03/2024.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        TabView() {
            MyProjectsView()
                .tabItem {
                    Label("my_projects", systemImage: "list.dash")
                }
            
            FeedsView()
                .tabItem {
                    Label("feeds_home", systemImage: "square.and.pencil")
                }
        }
        .tint(.berbzaDark)
        .onAppear(perform: {
            UITabBar.appearance().unselectedItemTintColor = .lightGray
            UITabBar.appearance().backgroundColor = .systemGray4.withAlphaComponent(0.3)
        })
    }
}

#Preview {
    HomeView()
        .environment(\.locale, .init(identifier: "en"))
}
