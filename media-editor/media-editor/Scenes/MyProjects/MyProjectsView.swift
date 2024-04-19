//
//  MyProjectsView.swift
//  media-editor
//
//  Created by Ibrahim Abdul Aziz on 19/04/2024.
//

import SwiftUI
import PhotosUI

struct MyProjectsView: View {
    @State private var showPhotoPicker = false
    @State private var selectedImage: UIImage? = nil
    @State private var selectedVideo: UIImage? = nil
    
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
                            XTextImageButton(title: "pro_title",
                                             image: Image(.rocket),
                                             backgroundColor: .redHq,
                                             foregroundColor: .whiteHq)
                            {}
                        }
                    }
                
                VStack(alignment: .center, spacing: 24, content: {
                    EmptyStateView()
                    
                    XTextImageButton(title: "create_project",
                                     image: Image(systemName: "plus"),
                                     backgroundColor: .purpleHq,
                                     foregroundColor: .whiteHq)
                    { showPhotoPicker = true }
                        .fullScreenCover(isPresented: $showPhotoPicker) {
                            PhotoPicker(filter: .any(of: [.videos, .images, .livePhotos, .screenshots]), limit: 1)
                                .ignoresSafeArea(.all, edges: .all)
                        }
                })
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            }
        }
    }
}


#Preview {
    MyProjectsView()
}
