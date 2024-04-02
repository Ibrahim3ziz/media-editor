//
//  XTextImageButton.swift
//  media-editor
//
//  Created by Ibrahim Abdul Aziz on 04/03/2024.
//

import SwiftUI


/// Missing:  update fonts based on size
///
struct XTextImageButton: View {
    
    // MARK: - Properties
    private var title: String
    private var image: Image
    private var backgroundColor: Color
    private var foregroundColor: Color
    
    private let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                image
                    .frame(width: 24, height: 24, alignment: .center)
                    .clipped()
                    .foregroundStyle(.white)
                Text(title)
            }
            .foregroundColor(foregroundColor)
            .font(.system(size: 16, weight: .semibold))
            .frame(maxWidth: .infinity, minHeight: 52)
            .padding(.horizontal, 16)
            .background(backgroundColor)
            .cornerRadius(16)
        })
    }
    
    /// remove backgroundColor and foregroundColor and make it based on type
    init(title: String, image: Image, backgroundColor: Color, foregroundColor: Color, action: @escaping () -> Void) {
        self.title = title
        self.image = image
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.action = action
    }
}

#Preview {
    XTextImageButton(title: "pro_title", image: Image(.homeEmptyState), backgroundColor: .redHq, foregroundColor: .whiteHq, action: { print("Hellow") })
}
