//
//  XFillButton.swift
//  media-editor
//
//  Created by Ibrahim Abdul Aziz on 04/03/2024.
//

import SwiftUI

struct XFillButton: View{
    
    // MARK: - Properties
    private var title: String
    
    var body: some View {
        Button{
            
        } label: {
            Text(title)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: 52)
                .padding(.horizontal, 16)
                .background(.black)
                .cornerRadius(16)
        }
    }
    
    init(title: String) {
        self.title = title
    }
}

#Preview {
    XFillButton(title: "Button Title")
}
