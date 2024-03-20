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
                Color.blackHq.ignoresSafeArea()
                Text("")
                    .navigationTitle("")
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            Image(systemName: "questionmark.circle")
                                .foregroundStyle(Color.whiteHq)
                        }
                        
                        ToolbarItem(placement: .topBarTrailing) {
                            XTextImageButton(title: "pro_title", image: Image(.rocket), backgroundColor: .redHq, foregroundColor: .whiteHq)
                        }
                    }
                
                VStack(alignment: .center, spacing: 24, content: {
                    EmptyStateView()
                    
                    XTextImageButton(title: "create_project", image: Image(systemName: "plus"), backgroundColor: .purpleHq, foregroundColor: .whiteHq)
                })
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            }
        }
    }
}

#Preview {
    ContentView()
}
