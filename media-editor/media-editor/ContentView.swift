//
//  ContentView.swift
//  media-editor
//
//  Created by Ibrahim Abdul Aziz on 04/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("you_have_no_projects-yet")
//                .environment(\.locale, .init(identifier: "ar"))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}