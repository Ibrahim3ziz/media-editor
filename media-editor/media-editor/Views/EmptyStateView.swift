//
//  EmptyStateView.swift
//  media-editor
//
//  Created by Ibrahim Abdul Aziz on 04/03/2024.
//

import SwiftUI

struct EmptyStateView: View {
    var body: some View {
        VStack {
            Image(.homeEmptyState)
            
            Text("you_have_no_projects_yet")
                .font(.great)
                .foregroundStyle(Color.opacitywh2)
        }
    }
}

#Preview {
    EmptyStateView()
}
