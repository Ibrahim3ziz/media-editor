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
    @State private var isShowingDetailView = false
    
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
                            PhotoPicker(filter: .any(of: [.videos, .images, .livePhotos, .screenshots]), limit: 1, completion: { results in
                                PhotoPicker
                                    .convertToUIImageArray(fromResults: results) { images, error in
                                        if let images, let firstImage = images.first {
                                            selectedImage = firstImage
                                            isShowingDetailView = true
                                        }
                                    }
                            })
                            .ignoresSafeArea(.all, edges: .all)
                        }
                })
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            }
            .navigationDestination(isPresented: $isShowingDetailView) {
                if selectedImage != nil {
                    ProjectDetailsView(image: selectedImage!)
                }
            }
        }
    }
}

#Preview {
    MyProjectsView()
}
