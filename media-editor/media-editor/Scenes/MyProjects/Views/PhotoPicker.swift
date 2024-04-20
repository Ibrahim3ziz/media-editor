//
//  PhotoPicker.swift
//  media-editor
//
//  Created by Ibrahim Abdul Aziz on 24/03/2024.
//

import PhotosUI
import SwiftUI

struct PhotoPicker: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = PHPickerViewController
    
    let filter: PHPickerFilter
    var limit: Int = 0
    let completion: ([PHPickerResult]) -> Void
    
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var configuration = PHPickerConfiguration()
        configuration.filter = filter
        configuration.selectionLimit = limit
        
        let controller = PHPickerViewController(configuration: configuration)
        controller.delegate = context.coordinator
        return controller
    }
    
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    class Coordinator: PHPickerViewControllerDelegate {
        
        private let parent: PhotoPicker
        
        init(_ parent: PhotoPicker) {
            self.parent = parent
        }
        
        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            picker.dismiss(animated: true)
            parent.completion(results)
        }
    }
    
    static func convertToUIImageArray(fromResults results: [PHPickerResult], completion: @escaping ([UIImage]?, Error?) -> Void) {
        
        var images = [UIImage]()
        
        let dispatchGroup = DispatchGroup()
        for result in results {
            dispatchGroup.enter()
            let itemProvider = result.itemProvider
            if itemProvider.canLoadObject(ofClass: UIImage.self) {
                itemProvider.loadObject(ofClass: UIImage.self) { (imageOrNil, errorOrNil) in
                    if let error = errorOrNil {
                        completion(nil, error)
                    }
                    if let image = imageOrNil as? UIImage {
                        images.append(image)
                    }
                    dispatchGroup.leave()
                }
            }
        }
        dispatchGroup.notify(queue: .main) {
            completion(images, nil)
        }
    }
}










/*
     static func convertToUIImageArray(fromResults results: [PHPickerResult]) async throws -> [UIImage] {
       // Will be used to store the images that get created from results.
       var images = [UIImage]()
 
       for result in results {
         let itemProvider = result.itemProvider
         guard itemProvider.canLoadObject(ofClass: UIImage.self) else { continue }
 
         do {
           let image = try await withCheckedThrowingContinuation { (continuation: CheckedContinuation<UIImage, Error>) in
             itemProvider.loadObject(ofClass: UIImage.self) { (imageOrNil, errorOrNil) in
               if let error = errorOrNil {
                 continuation.resume(throwing: error) // Use resume(throwing:)
               } else if let image = imageOrNil as? UIImage {
                 continuation.resume(returning: image)
               } else {
                 continuation.resume(throwing:  NSError(domain: "com.yourapp.error", code: -1, userInfo: ["message": "Failed to load image"]))
               }
             }
           }
           images.append(image)
         } catch {
           throw error // Re-throw the caught error
         }
       }
 
         return images
     }
 
 
 static func convertToVideosArray(from results: [PHPickerResult], completion: @escaping ([AVPlayerItemVideoOutput]?, Error) -> Void) {
     
 }

 */
