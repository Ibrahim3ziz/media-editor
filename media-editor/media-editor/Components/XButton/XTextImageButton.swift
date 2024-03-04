//
//  XTextImageButton.swift
//  media-editor
//
//  Created by Ibrahim Abdul Aziz on 04/03/2024.
//

import SwiftUI

struct XTextImageButton: View {
    
    // MARK: - Properties
    private var title: String
    private var image: Image
    
    var body: some View {
        Button {
            
        } label: {
            HStack {
                
                image
                    .frame(width: 24, height: 24, alignment: .center)
                    .clipped()
                    .foregroundStyle(.red)
                    .foregroundStyle(.white)
                
                Text(title)
                
            }
            .foregroundColor(.white)
            .font(.system(size: 16, weight: .semibold))
            .frame(maxWidth: .infinity, minHeight: 52)
            .padding(.horizontal, 16)
            .background(.placeholder)
            .cornerRadius(16)
        }
    }
    
    init(title: String, image: Image) {
        self.title = title
        self.image = image
    }
}

#Preview {
    XTextImageButton(title: "pro_title", image: Image(.homeEmptyState))
}
