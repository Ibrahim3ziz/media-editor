//
//  ContentView.swift
//  media-editor
//
//  Created by Ibrahim Abdul Aziz on 04/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                
                Text("")
                    .navigationTitle("")
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            Image(systemName: "questionmark.circle")
                        }
                        
                        ToolbarItem(placement: .topBarTrailing) {
                            XTextImageButton(title: "pro_title", image: Image(.homeEmptyState))
                        }
                    }
                
                EmptyStateView()
            }
        }
    }
}

#Preview {
    ContentView()
}
