//
//  ProjectDetailsView.swift
//  media-editor
//
//  Created by Ibrahim Abdul Aziz on 02/05/2024.
//

import SwiftUI

struct ProjectDetailsView: View {
    private var image: UIImage
    
    init(image: UIImage) {
        self.image = image
    }
    
    var body: some View {
        GeometryReader { geometry in
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
        }
    }
}

#Preview {
    ProjectDetailsView(image: UIImage())
}
